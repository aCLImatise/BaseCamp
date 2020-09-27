version 1.0

task GcloudProjectsCreate {
  input {
    Boolean? enable_cloud_apis
    Boolean? labels
    String? name
    String? organization
    Boolean? set_as_default
    String characters_dot
  }
  command <<<
    gcloud projects create \
      ~{characters_dot} \
      ~{if (enable_cloud_apis) then "--enable-cloud-apis" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(organization) then ("--organization " +  '"' + organization + '"') else ""} \
      ~{if (set_as_default) then "--set-as-default" else ""}
  >>>
  parameter_meta {
    enable_cloud_apis: "Enable cloudapis.googleapis.com during creation. Enabled by default,\\nuse --no-enable-cloud-apis to disable."
    labels: "=[KEY=VALUE,...]\\nA list of label KEY=VALUE pairs to add."
    name: "Name for the project you want to create. If not specified, will use\\nproject id as name."
    organization: "ID for the organization to use as a parent"
    set_as_default: "Set newly created project as [core.project] property."
    characters_dot: "FLAGS"
  }
  output {
    File out_stdout = stdout()
  }
}