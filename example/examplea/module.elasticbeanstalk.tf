module "elasticbeanstalk" {
  source                = "../../"
  application_key       = var.application_key
  application_name      = var.application_name
  asg                   = var.asg
  launchconfiguration   = var.launchconfiguration
  CrossZone             = var.CrossZone
  healthcheck           = var.healthcheck
  LogPublicationControl = var.LogPublicationControl
  ManagedActions        = var.ManagedActions
  name                  = var.name
  PreferredStartTime    = var.PreferredStartTime
  RetentionInDays       = var.RetentionInDays
  stack_reg_ex          = var.stack_reg_ex
  StreamLogs            = var.StreamLogs
  UpdateLevel           = var.UpdateLevel
  subnet_ids            = data.aws_subnet_ids.subnets.ids
  vpc                   = var.vpc
  vpc_id                = tolist(data.aws_vpcs.vpc.ids)[0]
  rollingupdate         = var.rollingupdate
}
