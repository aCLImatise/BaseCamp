version 1.0

task Mulledbuild {
  input {
    File? invo_lucro_path
    Boolean? dry_run
    Boolean? verbose
    Boolean? singularity
    Directory? singularity_image_dir
    String? namespace
    String? repository_template
    String? channels
    String? cond_a_version
    String? o_auth_token
    String? check_published
    String? image_build
    String? repository_name
    String? test
    File? test_files
    String command_buildandtest_build
    String targets
  }
  command <<<
    mulled_build \
      ~{command_buildandtest_build} \
      ~{targets} \
      ~{if defined(invo_lucro_path) then ("--involucro-path " +  '"' + invo_lucro_path + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (singularity) then "--singularity" else ""} \
      ~{if defined(singularity_image_dir) then ("--singularity-image-dir " +  '"' + singularity_image_dir + '"') else ""} \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""} \
      ~{if defined(repository_template) then ("--repository_template " +  '"' + repository_template + '"') else ""} \
      ~{if defined(channels) then ("--channels " +  '"' + channels + '"') else ""} \
      ~{if defined(cond_a_version) then ("--conda-version " +  '"' + cond_a_version + '"') else ""} \
      ~{if defined(o_auth_token) then ("--oauth-token " +  '"' + o_auth_token + '"') else ""} \
      ~{if defined(check_published) then ("--check-published " +  '"' + check_published + '"') else ""} \
      ~{if defined(image_build) then ("--image-build " +  '"' + image_build + '"') else ""} \
      ~{if defined(repository_name) then ("--repository-name " +  '"' + repository_name + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(test_files) then ("--test-files " +  '"' + test_files + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0"
  }
  parameter_meta {
    invo_lucro_path: "Path to involucro (if not set will look in working directory and on PATH)."
    dry_run: "Just print commands instead of executing them."
    verbose: "Cause process to be verbose."
    singularity: "Additionally build a singularity image."
    singularity_image_dir: "Directory to write singularity images too."
    namespace: "quay.io namespace."
    repository_template: "Docker repository target for publication (only quay.io or compat. API is currently supported)."
    channels: "Comma separated list of target conda channels."
    cond_a_version: "Change to specified version of Conda before installing packages."
    o_auth_token: "If set, use this token when communicating with quay.io API."
    check_published: "Override mulled image name - this is not recommended since metadata will not be detectable from the name of resulting images"
    image_build: "Build a versioned variant of this image."
    repository_name: "Name of mulled container (leave blank to auto-generate based on packages - recommended)."
    test: "Provide a test command for the container."
    test_files: "Provide test-files that may be required to run the test command. Individual mounts are separated by comma.The source:dest docker syntax is respected. If relative file paths are given, files will be mounted in /source/<relative_file_path>"
    command_buildandtest_build: "Command (build-and-test, build, all)"
    targets: "Build a single container with specific package(s)."
  }
  output {
    File out_stdout = stdout()
  }
}