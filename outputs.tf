output "policies" {
  value = {
    for policy in data.template_file.policies :
    policy.vars.service_name => policy.rendered
  }
}
