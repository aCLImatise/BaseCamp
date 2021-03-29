version 1.0

task Mulledbuildchannel {
  input {
    String? repo_data
    Int? diff_hours
    String? force_rebuild
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
    String? repository_name
  }
  command <<<
    mulled_build_channel \
      ~{if defined(repo_data) then ("--repo-data " +  '"' + repo_data + '"') else ""} \
      ~{if defined(diff_hours) then ("--diff-hours " +  '"' + diff_hours + '"') else ""} \
      ~{if defined(force_rebuild) then ("--force-rebuild " +  '"' + force_rebuild + '"') else ""} \
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
      ~{if defined(repository_name) then ("--repository-name " +  '"' + repository_name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-tool-util:21.1.0--py_0"
  }
  parameter_meta {
    repo_data: "Published repository data. If you want to build all containers for bioconda, this parameter needs to be set to \\\"bioconda\\\""
    diff_hours: "If finding all recently changed recipes, use this number of hours."
    force_rebuild: "Rebuild package even if already published."
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
    check_published: "Build a single container with specific package(s)."
    repository_name: "Name of a single container (leave blank to auto-generate based on packages)."
  }
  output {
    File out_stdout = stdout()
  }
}