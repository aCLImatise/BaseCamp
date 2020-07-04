version 1.0

task MulledBuild {
  input {
    String? name_override
    String? image_build
    String? repository_name
    String? test
    String? test_files
    String? invo_lucro_path
    Boolean? dry_run
    String command_buildandtest_build
    String targets
  }
  command <<<
    mulled-build \
      ~{command_buildandtest_build} \
      ~{targets} \
      ~{if defined(name_override) then ("--name-override " +  '"' + name_override + '"') else ""} \
      ~{if defined(image_build) then ("--image-build " +  '"' + image_build + '"') else ""} \
      ~{if defined(repository_name) then ("--repository-name " +  '"' + repository_name + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(test_files) then ("--test-files " +  '"' + test_files + '"') else ""} \
      ~{if defined(invo_lucro_path) then ("--involucro-path " +  '"' + invo_lucro_path + '"') else ""} \
      ~{true="--dry-run" false="" dry_run}
  >>>
  parameter_meta {
    name_override: "Override mulled image name - this is not recommended since metadata will not be detectable from the name of resulting images"
    image_build: "Build a versioned variant of this image."
    repository_name: "Name of mulled container (leave blank to auto-generate based on packages - recommended)."
    test: "Provide a test command for the container."
    test_files: "Provide test-files that may be required to run the test command. Individual mounts are separated by comma.The source:dest docker syntax is respected. If relative file paths are given, files will be mounted in /source/<relative_file_path>"
    invo_lucro_path: ""
    dry_run: ""
    command_buildandtest_build: "Command (build-and-test, build, all)"
    targets: "Build a single container with specific package(s)."
  }
}