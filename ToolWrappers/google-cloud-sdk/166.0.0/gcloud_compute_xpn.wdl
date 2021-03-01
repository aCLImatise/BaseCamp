version 1.0

task GcloudComputeXpn {
  input {
    String associated_projects
    String organizations
    String disable
    String enable
    String get_host_project
    String list_associated_resources
  }
  command <<<
    gcloud compute xpn \
      ~{associated_projects} \
      ~{organizations} \
      ~{disable} \
      ~{enable} \
      ~{get_host_project} \
      ~{list_associated_resources}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    associated_projects: "Configure associated projects for cross-project networking (XPN)."
    organizations: "Configure organizations for cross-project networking (XPN)."
    disable: "Disable the given project as an XPN host."
    enable: "Enable the given project as an XPN host."
    get_host_project: "Get the XPN host project that the given project is linked to."
    list_associated_resources: "List the resources that can use the given project via XPN."
  }
  output {
    File out_stdout = stdout()
  }
}