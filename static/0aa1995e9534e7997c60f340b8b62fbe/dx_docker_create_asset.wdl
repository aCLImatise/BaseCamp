version 1.0

task DxdockerCreateasset {
  input {
    File? output_path
    Boolean? alternative_export
    String? ubuntu_version
    String? asset_version
  }
  command <<<
    dx_docker create_asset \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if (alternative_export) then "--alternative_export" else ""} \
      ~{if defined(ubuntu_version) then ("--ubuntu_version " +  '"' + ubuntu_version + '"') else ""} \
      ~{if defined(asset_version) then ("--asset_version " +  '"' + asset_version + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_path: "Project ID and path in project to upload image to\\n(defaults to project root)"
    alternative_export: "EXPERT ONLY: Use alternative method to export Docker\\nimage since Docker CLI export sometimes doesn't create\\nthe root filesystem properly."
    ubuntu_version: "Ubuntu version"
    asset_version: "Asset version\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}