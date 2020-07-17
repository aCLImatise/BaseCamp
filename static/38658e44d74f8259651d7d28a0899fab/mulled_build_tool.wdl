version 1.0

task MulledBuildTool {
  input {
    String? name_override
    String? image_build
    String? invo_lucro_path
    Boolean? dry_run
    String command_buildandtest_build
    String tool
  }
  command <<<
    mulled-build-tool \
      ~{command_buildandtest_build} \
      ~{tool} \
      ~{if defined(name_override) then ("--name-override " +  '"' + name_override + '"') else ""} \
      ~{if defined(image_build) then ("--image-build " +  '"' + image_build + '"') else ""} \
      ~{if defined(invo_lucro_path) then ("--involucro-path " +  '"' + invo_lucro_path + '"') else ""} \
      ~{true="--dry-run" false="" dry_run}
  >>>
  parameter_meta {
    name_override: "Override mulled image name - this is not recommended since metadata will not be detectable from the name of resulting images"
    image_build: "Build a versioned variant of this image."
    invo_lucro_path: ""
    dry_run: ""
    command_buildandtest_build: "Command (build-and-test, build, all)"
    tool: "Path to tool to build mulled image for."
  }
}