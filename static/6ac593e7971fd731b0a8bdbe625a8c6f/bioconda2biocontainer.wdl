version 1.0

task Bioconda2biocontainer {
  input {
    String? package_name
    String? package_version
    String? container_type
    String? registry_host
    Boolean? json
    Boolean? all
    Boolean? sort_by_size
    Boolean? sort_by_download
  }
  command <<<
    bioconda2biocontainer \
      ~{if defined(package_name) then ("--package_name " +  '"' + package_name + '"') else ""} \
      ~{if defined(package_version) then ("--package_version " +  '"' + package_version + '"') else ""} \
      ~{if defined(container_type) then ("--container_type " +  '"' + container_type + '"') else ""} \
      ~{if defined(registry_host) then ("--registry_host " +  '"' + registry_host + '"') else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (sort_by_size) then "--sort_by_size" else ""} \
      ~{if (sort_by_download) then "--sort_by_download" else ""}
  >>>
  parameter_meta {
    package_name: "Bioconda package name"
    package_version: "Bioconda package version"
    container_type: "Container type. Default: Docker. Values: Docker,\\nConda, Singularity"
    registry_host: "Registry host. Default: quay.io.Values:"
    json: "Print json format"
    all: "Print all images"
    sort_by_size: "Sort by size instead of by date"
    sort_by_download: "Sort by number of downloads instead of by date"
  }
  output {
    File out_stdout = stdout()
  }
}