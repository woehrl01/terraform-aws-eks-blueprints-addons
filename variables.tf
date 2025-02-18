variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_endpoint" {
  description = "Endpoint for your Kubernetes API server"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes `<major>.<minor>` version to use for the EKS cluster (i.e.: `1.24`)"
  type        = string
}

variable "oidc_provider" {
  description = "The OpenID Connect identity provider (issuer URL without leading `https://`)"
  type        = string
}

variable "oidc_provider_arn" {
  description = "The ARN of the cluster OIDC Provider"
  type        = string
}

################################################################################
# EKS Addons
################################################################################

variable "eks_addons" {
  description = "Map of EKS addon configurations to enable for the cluster. Addon name can be the map keys or set with `name`"
  type        = any
  default     = {}
}

variable "eks_addons_timeouts" {
  description = "Create, update, and delete timeout configurations for the EKS addons"
  type        = map(string)
  default     = {}
}

################################################################################
# ArgoCD
################################################################################

variable "enable_argocd" {
  description = "Enable Argo CD Kubernetes add-on"
  type        = bool
  default     = false
}

variable "argocd_helm_config" {
  description = "Argo CD Kubernetes add-on config"
  type        = any
  default     = {}
}

variable "argocd_applications" {
  description = "Argo CD Applications config to bootstrap the cluster"
  type        = any
  default     = {}
}

variable "argocd_manage_add_ons" {
  description = "Enable managing add-on configuration via ArgoCD App of Apps"
  type        = bool
  default     = false
}

################################################################################
# Argo Workflows
################################################################################

variable "enable_argo_workflows" {
  description = "Enable Argo workflows add-on"
  type        = bool
  default     = false
}

variable "enable_argo_workflows_gitops" {
  description = "Enable Argo Workflows using GitOps add-on"
  type        = bool
  default     = false
}

variable "argo_workflows" {
  description = "Argo Workflows addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# Argo Rollouts
################################################################################

variable "enable_argo_rollouts" {
  description = "Enable Argo Rollouts add-on"
  type        = bool
  default     = false
}

variable "enable_argo_rollouts_gitops" {
  description = "Enable Argo Rollouts using GitOps add-on"
  type        = bool
  default     = false
}

variable "argo_rollouts" {
  description = "Argo Rollouts addon configuration values"
  type        = any
  default     = {}
}

################################################################################
# Cloudwatch Metrics
################################################################################

variable "enable_cloudwatch_metrics" {
  description = "Enable AWS Cloudwatch Metrics add-on for Container Insights"
  type        = bool
  default     = false
}

variable "enable_cloudwatch_metrics_gitops" {
  description = "Enable Cloudwatch Metrics using GitOps add-on"
  type        = bool
  default     = false
}

variable "cloudwatch_metrics" {
  description = "Cloudwatch Metrics addon configuration values"
  type        = any
  default     = {}
}



variable "auto_scaling_group_names" {
  description = "List of self-managed node groups autoscaling group names"
  type        = list(string)
  default     = []
}

variable "irsa_iam_role_path" {
  description = "IAM role path for IRSA roles"
  type        = string
  default     = "/"
}

variable "irsa_iam_permissions_boundary" {
  description = "IAM permissions boundary for IRSA roles"
  type        = string
  default     = ""
}

variable "custom_image_registry_uri" {
  description = "Custom image registry URI map of `{region = dkr.endpoint }`"
  type        = map(string)
  default     = {}
}

variable "enable_cluster_autoscaler" {
  description = "Enable Cluster autoscaler add-on"
  type        = bool
  default     = false
}

variable "cluster_autoscaler_helm_config" {
  description = "Cluster Autoscaler Helm Chart config"
  type        = any
  default     = {}
}

#-----------External DNS ADDON-------------
variable "enable_external_dns" {
  description = "External DNS add-on"
  type        = bool
  default     = false
}

variable "external_dns_helm_config" {
  description = "External DNS Helm Chart config"
  type        = any
  default     = {}
}

variable "external_dns_irsa_policies" {
  description = "Additional IAM policies for a IAM role for service accounts"
  type        = list(string)
  default     = []
}

variable "external_dns_route53_zone_arns" {
  description = "List of Route53 zones ARNs which external-dns will have access to create/manage records"
  type        = list(string)
  default     = []
}

#-----------Amazon Managed Service for Prometheus-------------
variable "enable_amazon_prometheus" {
  description = "Enable AWS Managed Prometheus service"
  type        = bool
  default     = false
}

variable "amazon_prometheus_workspace_endpoint" {
  description = "AWS Managed Prometheus WorkSpace Endpoint"
  type        = string
  default     = null
}

#-----------PROMETHEUS-------------
variable "enable_prometheus" {
  description = "Enable Community Prometheus add-on"
  type        = bool
  default     = false
}

variable "prometheus_helm_config" {
  description = "Community Prometheus Helm Chart config"
  type        = any
  default     = {}
}

#-----------KUBE-PROMETHEUS-STACK-------------
variable "enable_kube_prometheus_stack" {
  description = "Enable Community kube-prometheus-stack add-on"
  type        = bool
  default     = false
}

variable "kube_prometheus_stack_helm_config" {
  description = "Community kube-prometheus-stack Helm Chart config"
  type        = any
  default     = {}
}

#-----------METRIC SERVER-------------
variable "enable_metrics_server" {
  description = "Enable metrics server add-on"
  type        = bool
  default     = false
}

variable "metrics_server_helm_config" {
  description = "Metrics Server Helm Chart config"
  type        = any
  default     = {}
}

#-----------AWS EFS CSI DRIVER ADDON-------------
variable "enable_aws_efs_csi_driver" {
  description = "Enable AWS EFS CSI driver add-on"
  type        = bool
  default     = false
}

variable "aws_efs_csi_driver_helm_config" {
  description = "AWS EFS CSI driver Helm Chart config"
  type        = any
  default     = {}
}

variable "aws_efs_csi_driver_irsa_policies" {
  description = "Additional IAM policies for a IAM role for service accounts"
  type        = list(string)
  default     = []
}

#-----------AWS EFS CSI DRIVER ADDON-------------
variable "enable_aws_fsx_csi_driver" {
  description = "Enable AWS FSx CSI driver add-on"
  type        = bool
  default     = false
}

variable "aws_fsx_csi_driver_helm_config" {
  description = "AWS FSx CSI driver Helm Chart config"
  type        = any
  default     = {}
}

variable "aws_fsx_csi_driver_irsa_policies" {
  description = "Additional IAM policies for a IAM role for service accounts"
  type        = list(string)
  default     = []
}

#-----------AWS LB Ingress Controller-------------
variable "enable_aws_load_balancer_controller" {
  description = "Enable AWS Load Balancer Controller add-on"
  type        = bool
  default     = false
}

variable "aws_load_balancer_controller_helm_config" {
  description = "AWS Load Balancer Controller Helm Chart config"
  type        = any
  default     = {}
}

#-----------NGINX-------------
variable "enable_ingress_nginx" {
  description = "Enable Ingress Nginx add-on"
  type        = bool
  default     = false
}

variable "ingress_nginx_helm_config" {
  description = "Ingress Nginx Helm Chart config"
  type        = any
  default     = {}
}

#-----------AWS FOR FLUENT BIT-------------
variable "enable_aws_for_fluentbit" {
  description = "Enable AWS for FluentBit add-on"
  type        = bool
  default     = false
}

variable "aws_for_fluentbit_helm_config" {
  description = "AWS for FluentBit Helm Chart config"
  type        = any
  default     = {}
}

variable "aws_for_fluentbit_irsa_policies" {
  description = "Additional IAM policies for a IAM role for service accounts"
  type        = list(string)
  default     = []
}

variable "aws_for_fluentbit_create_cw_log_group" {
  description = "Set to false to use existing CloudWatch log group supplied via the cw_log_group_name variable."
  type        = bool
  default     = true
}

variable "aws_for_fluentbit_cw_log_group_name" {
  description = "FluentBit CloudWatch Log group name"
  type        = string
  default     = null
}

variable "aws_for_fluentbit_cw_log_group_retention" {
  description = "FluentBit CloudWatch Log group retention period"
  type        = number
  default     = 90
}

variable "aws_for_fluentbit_cw_log_group_skip_destroy" {
  description = "Set to true if you do not wish the log group (and any logs it may contain) to be deleted at destroy time"
  type        = bool
  default     = true
}

variable "aws_for_fluentbit_cw_log_group_kms_key_arn" {
  description = "FluentBit CloudWatch Log group KMS Key"
  type        = string
  default     = null
}

#-----------FARGATE FLUENT BIT-------------
variable "enable_fargate_fluentbit" {
  description = "Enable Fargate FluentBit add-on"
  type        = bool
  default     = false
}

variable "fargate_fluentbit_addon_config" {
  description = "Fargate fluentbit add-on config"
  type        = any
  default     = {}
}

#-----------CERT MANAGER-------------
variable "enable_cert_manager" {
  description = "Enable Cert Manager add-on"
  type        = bool
  default     = false
}

variable "cert_manager_helm_config" {
  description = "Cert Manager Helm Chart config"
  type        = any
  default     = {}
}

variable "cert_manager_irsa_policies" {
  description = "Additional IAM policies for a IAM role for service accounts"
  type        = list(string)
  default     = []
}

variable "cert_manager_domain_names" {
  description = "Domain names of the Route53 hosted zone to use with cert-manager"
  type        = list(string)
  default     = []
}

variable "cert_manager_kubernetes_svc_image_pull_secrets" {
  description = "list(string) of kubernetes imagePullSecrets"
  type        = list(string)
  default     = []
}

variable "cert_manager_install_letsencrypt_issuers" {
  description = "Install Let's Encrypt Cluster Issuers"
  type        = bool
  default     = true
}

variable "cert_manager_letsencrypt_email" {
  description = "Email address for expiration emails from Let's Encrypt"
  type        = string
  default     = ""
}

#-----------AWS NODE TERMINATION HANDLER-------------
variable "enable_aws_node_termination_handler" {
  description = "Enable AWS Node Termination Handler add-on"
  type        = bool
  default     = false
}

variable "aws_node_termination_handler_helm_config" {
  description = "AWS Node Termination Handler Helm Chart config"
  type        = any
  default     = {}
}

variable "aws_node_termination_handler_irsa_policies" {
  description = "Additional IAM policies for a IAM role for service accounts"
  type        = list(string)
  default     = []
}

#-----------KARPENTER ADDON-------------
variable "enable_karpenter" {
  description = "Enable Karpenter autoscaler add-on"
  type        = bool
  default     = false
}

variable "karpenter_helm_config" {
  description = "Karpenter autoscaler add-on config"
  type        = any
  default     = {}
}

variable "karpenter_irsa_policies" {
  description = "Additional IAM policies for a IAM role for service accounts"
  type        = list(string)
  default     = []
}

variable "karpenter_node_iam_instance_profile" {
  description = "Karpenter Node IAM Instance profile id"
  type        = string
  default     = ""
}

variable "karpenter_enable_spot_termination_handling" {
  description = "Determines whether to enable native spot termination handling"
  type        = bool
  default     = false
}

variable "karpenter_event_rule_name_prefix" {
  description = "Prefix used for karpenter event bridge rules"
  type        = string
  default     = ""

  validation {
    condition     = length(var.karpenter_event_rule_name_prefix) <= 14
    error_message = "Maximum input length exceeded. Please enter no more than 14 characters."
  }
}

variable "sqs_queue_managed_sse_enabled" {
  description = "Enable server-side encryption (SSE) for a SQS queue"
  type        = bool
  default     = true
}

variable "sqs_queue_kms_master_key_id" {
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK"
  type        = string
  default     = null
}

variable "sqs_queue_kms_data_key_reuse_period_seconds" {
  description = "The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again"
  type        = number
  default     = null
}

#------Vertical Pod Autoscaler(VPA) ADDON--------
variable "enable_vpa" {
  description = "Enable Vertical Pod Autoscaler add-on"
  type        = bool
  default     = false
}

variable "vpa_helm_config" {
  description = "VPA Helm Chart config"
  type        = any
  default     = null
}

#-----------AWS PCA ISSUER-------------
variable "enable_aws_privateca_issuer" {
  description = "Enable PCA Issuer"
  type        = bool
  default     = false
}

variable "aws_privateca_issuer_helm_config" {
  description = "PCA Issuer Helm Chart config"
  type        = any
  default     = {}
}

variable "aws_privateca_acmca_arn" {
  description = "ARN of AWS ACM PCA"
  type        = string
  default     = ""
}

variable "aws_privateca_issuer_irsa_policies" {
  description = "IAM policy ARNs for AWS ACM PCA IRSA"
  type        = list(string)
  default     = []
}

#-----------OPENTELEMETRY OPERATOR-------------
variable "enable_opentelemetry_operator" {
  description = "Enable opentelemetry operator add-on"
  type        = bool
  default     = false
}

variable "opentelemetry_operator_helm_config" {
  description = "Opentelemetry Operator Helm Chart config"
  type        = any
  default     = {}
}

variable "enable_amazon_eks_adot" {
  description = "Enable Amazon EKS ADOT addon"
  type        = bool
  default     = false
}

variable "amazon_eks_adot_config" {
  description = "Configuration for Amazon EKS ADOT add-on"
  type        = any
  default     = {}
}

#-----------Kubernetes Velero ADDON-------------
variable "enable_velero" {
  description = "Enable Kubernetes Dashboard add-on"
  type        = bool
  default     = false
}

variable "velero_helm_config" {
  description = "Kubernetes Velero Helm Chart config"
  type        = any
  default     = null
}

variable "velero_irsa_policies" {
  description = "IAM policy ARNs for velero IRSA"
  type        = list(string)
  default     = []
}

variable "velero_backup_s3_bucket" {
  description = "Bucket name for velero bucket"
  type        = string
  default     = ""
}

#-----------AWS CSI Secrets Store Provider-------------
variable "enable_secrets_store_csi_driver_provider_aws" {
  type        = bool
  default     = false
  description = "Enable AWS CSI Secrets Store Provider"
}

variable "csi_secrets_store_provider_aws_helm_config" {
  type        = any
  default     = null
  description = "CSI Secrets Store Provider AWS Helm Configurations"
}

#-----------CSI Secrets Store Provider-------------
variable "enable_secrets_store_csi_driver" {
  type        = bool
  default     = false
  description = "Enable CSI Secrets Store Provider"
}

variable "secrets_store_csi_driver_helm_config" {
  type        = any
  default     = null
  description = "CSI Secrets Store Provider Helm Configurations"
}

#-----------EXTERNAL SECRETS OPERATOR-----------
variable "enable_external_secrets" {
  type        = bool
  default     = false
  description = "Enable External Secrets operator add-on"
}

variable "external_secrets_helm_config" {
  type        = any
  default     = {}
  description = "External Secrets operator Helm Chart config"
}

variable "external_secrets_irsa_policies" {
  description = "Additional IAM policies for a IAM role for service accounts"
  type        = list(string)
  default     = []
}

variable "external_secrets_ssm_parameter_arns" {
  description = "List of Systems Manager Parameter ARNs that contain secrets to mount using External Secrets"
  type        = list(string)
  default     = ["arn:aws:ssm:*:*:parameter/*"]
}

variable "external_secrets_secrets_manager_arns" {
  description = "List of Secrets Manager ARNs that contain secrets to mount using External Secrets"
  type        = list(string)
  default     = ["arn:aws:secretsmanager:*:*:secret:*"]
}

#-----------Grafana ADDON-------------
variable "enable_grafana" {
  description = "Enable Grafana add-on"
  type        = bool
  default     = false
}
variable "grafana_helm_config" {
  description = "Kubernetes Grafana Helm Chart config"
  type        = any
  default     = null
}

variable "grafana_irsa_policies" {
  description = "IAM policy ARNs for grafana IRSA"
  type        = list(string)
  default     = []
}

#-----------Promtail ADDON-------------
variable "enable_promtail" {
  description = "Enable Promtail add-on"
  type        = bool
  default     = false
}

variable "promtail_helm_config" {
  description = "Promtail Helm Chart config"
  type        = any
  default     = {}
}

#-----------Gatekeeper ADDON-------------
variable "enable_gatekeeper" {
  description = "Enable Gatekeeper add-on"
  type        = bool
  default     = false
}

variable "gatekeeper_helm_config" {
  description = "Gatekeeper Helm Chart config"
  type        = any
  default     = {}
}
