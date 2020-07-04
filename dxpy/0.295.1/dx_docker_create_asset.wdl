version 1.0

task DxDockerCreateAsset {
  input {
    String? output_path
    Boolean? alternative_export
    String? ubuntu_version
    String? asset_version
    String image
  }
  command <<<
    dx-docker create-asset \
      ~{image} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{true="--alternative_export" false="" alternative_export} \
      ~{if defined(ubuntu_version) then ("--ubuntu_version " +  '"' + ubuntu_version + '"') else ""} \
      ~{if defined(asset_version) then ("--asset_version " +  '"' + asset_version + '"') else ""}
  >>>
  parameter_meta {
    output_path: "Project ID and path in project to upload image to (defaults to project root)"
    alternative_export: "EXPERT ONLY: Use alternative method to export Docker image since Docker CLI export sometimes doesn't create the root filesystem properly."
    ubuntu_version: "Ubuntu version"
    asset_version: "Asset version"
    image: "image name"
  }
}