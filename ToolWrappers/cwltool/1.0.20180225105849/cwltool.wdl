version 1.0

task Cwltool {
  input {
    Directory? basedir
    Boolean? parallel
    String? preserve_environment
    Boolean? preserve_entire_environment
    Boolean? rm_container
    Boolean? leave_container
    File? tmp_outdir_prefix
    Directory? cache_dir
    Boolean? rm_tmpdir
    Boolean? leave_tmpdir
    Directory? move_outputs
    Boolean? leave_outputs
    Directory? copy_outputs
    Boolean? enable_pull
    Boolean? disable_pull
    Int? rdf_serializer
    Int? eval_timeout
    Boolean? print_rdf
    Boolean? print_dot
    Boolean? print_deps
    Boolean? print_input_deps
    Boolean? pack
    Boolean? validate
    Boolean? print_supported_versions
    Boolean? strict
    Boolean? non_strict
    Boolean? skip_schemas
    Boolean? verbose
    Boolean? quiet
    Boolean? debug
    Boolean? timestamps
    String? user_space_docker_cmd
    Boolean? singularity
    Boolean? no_container
    Boolean? tool_help
    String? relative_deps
    Boolean? enable_dev
    Boolean? no_match_user
    Boolean? disable_net
    String? custom_net
    Boolean? enable_ga_four_gh_tool_registry
    Boolean? disable_ga_four_gh_tool_registry
    Int? add_ga_four_gh_tool_registry
    String? on_error
    Boolean? compute_checksum
    Boolean? no_compute_checksum
    Boolean? relax_path_checks
    Boolean? make_template
    Boolean? force_docker_pull
    Boolean? no_read_only
    Boolean? record_container_id
    File? cid_file_dir
    File? cid_file_prefix
    String cwl_document
    String inputs_object
    String notifications_dot
    String only
  }
  command <<<
    cwltool \
      ~{cwl_document} \
      ~{inputs_object} \
      ~{notifications_dot} \
      ~{only} \
      ~{if defined(basedir) then ("--basedir " +  '"' + basedir + '"') else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if defined(preserve_environment) then ("--preserve-environment " +  '"' + preserve_environment + '"') else ""} \
      ~{if (preserve_entire_environment) then "--preserve-entire-environment" else ""} \
      ~{if (rm_container) then "--rm-container" else ""} \
      ~{if (leave_container) then "--leave-container" else ""} \
      ~{if defined(tmp_outdir_prefix) then ("--tmp-outdir-prefix " +  '"' + tmp_outdir_prefix + '"') else ""} \
      ~{if defined(cache_dir) then ("--cachedir " +  '"' + cache_dir + '"') else ""} \
      ~{if (rm_tmpdir) then "--rm-tmpdir" else ""} \
      ~{if (leave_tmpdir) then "--leave-tmpdir" else ""} \
      ~{if (move_outputs) then "--move-outputs" else ""} \
      ~{if (leave_outputs) then "--leave-outputs" else ""} \
      ~{if (copy_outputs) then "--copy-outputs" else ""} \
      ~{if (enable_pull) then "--enable-pull" else ""} \
      ~{if (disable_pull) then "--disable-pull" else ""} \
      ~{if defined(rdf_serializer) then ("--rdf-serializer " +  '"' + rdf_serializer + '"') else ""} \
      ~{if defined(eval_timeout) then ("--eval-timeout " +  '"' + eval_timeout + '"') else ""} \
      ~{if (print_rdf) then "--print-rdf" else ""} \
      ~{if (print_dot) then "--print-dot" else ""} \
      ~{if (print_deps) then "--print-deps" else ""} \
      ~{if (print_input_deps) then "--print-input-deps" else ""} \
      ~{if (pack) then "--pack" else ""} \
      ~{if (validate) then "--validate" else ""} \
      ~{if (print_supported_versions) then "--print-supported-versions" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (non_strict) then "--non-strict" else ""} \
      ~{if (skip_schemas) then "--skip-schemas" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (timestamps) then "--timestamps" else ""} \
      ~{if defined(user_space_docker_cmd) then ("--user-space-docker-cmd " +  '"' + user_space_docker_cmd + '"') else ""} \
      ~{if (singularity) then "--singularity" else ""} \
      ~{if (no_container) then "--no-container" else ""} \
      ~{if (tool_help) then "--tool-help" else ""} \
      ~{if defined(relative_deps) then ("--relative-deps " +  '"' + relative_deps + '"') else ""} \
      ~{if (enable_dev) then "--enable-dev" else ""} \
      ~{if (no_match_user) then "--no-match-user" else ""} \
      ~{if (disable_net) then "--disable-net" else ""} \
      ~{if defined(custom_net) then ("--custom-net " +  '"' + custom_net + '"') else ""} \
      ~{if (enable_ga_four_gh_tool_registry) then "--enable-ga4gh-tool-registry" else ""} \
      ~{if (disable_ga_four_gh_tool_registry) then "--disable-ga4gh-tool-registry" else ""} \
      ~{if defined(add_ga_four_gh_tool_registry) then ("--add-ga4gh-tool-registry " +  '"' + add_ga_four_gh_tool_registry + '"') else ""} \
      ~{if defined(on_error) then ("--on-error " +  '"' + on_error + '"') else ""} \
      ~{if (compute_checksum) then "--compute-checksum" else ""} \
      ~{if (no_compute_checksum) then "--no-compute-checksum" else ""} \
      ~{if (relax_path_checks) then "--relax-path-checks" else ""} \
      ~{if (make_template) then "--make-template" else ""} \
      ~{if (force_docker_pull) then "--force-docker-pull" else ""} \
      ~{if (no_read_only) then "--no-read-only" else ""} \
      ~{if (record_container_id) then "--record-container-id" else ""} \
      ~{if defined(cid_file_dir) then ("--cidfile-dir " +  '"' + cid_file_dir + '"') else ""} \
      ~{if defined(cid_file_prefix) then ("--cidfile-prefix " +  '"' + cid_file_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    basedir: "Output directory, default current directory"
    parallel: "[experimental] Run jobs in parallel. Does not\\ncurrently keep track of ResourceRequirements like the\\nnumber of coresor memory and can overload this system"
    preserve_environment: "Preserve specific environment variable when running\\nCommandLineTools. May be provided multiple times."
    preserve_entire_environment: "Preserve all environment variable when running\\nCommandLineTools."
    rm_container: "Delete Docker container used by jobs after they exit\\n(default)"
    leave_container: "Do not delete Docker container used by jobs after they"
    tmp_outdir_prefix: "Path prefix for intermediate output directories"
    cache_dir: "Directory to cache intermediate workflow outputs to\\navoid recomputing steps."
    rm_tmpdir: "Delete intermediate temporary directories (default)"
    leave_tmpdir: "Do not delete intermediate temporary directories"
    move_outputs: "Move output files to the workflow output directory and\\ndelete intermediate output directories (default)."
    leave_outputs: "Leave output files in intermediate output directories."
    copy_outputs: "Copy output files to the workflow output directory,\\ndon't delete intermediate output directories."
    enable_pull: "Try to pull Docker images"
    disable_pull: "Do not try to pull Docker images"
    rdf_serializer: "Output RDF serialization format used by --print-rdf\\n(one of turtle (default), n3, nt, xml)"
    eval_timeout: "Time to wait for a Javascript expression to evaluate\\nbefore giving an error, default 20s."
    print_rdf: "Print corresponding RDF graph for workflow and exit"
    print_dot: "Print workflow visualization in graphviz format and"
    print_deps: "Print CWL document dependencies."
    print_input_deps: "Print input object document dependencies."
    pack: "Combine components into single document and print."
    validate: "Validate CWL document only."
    print_supported_versions: "Print supported CWL specs."
    strict: "Strict validation (unrecognized or out of place fields\\nare error)"
    non_strict: "Lenient validation (ignore unrecognized fields)"
    skip_schemas: "Skip loading of schemas"
    verbose: "Default logging"
    quiet: "Only print warnings and errors."
    debug: "Print even more logging"
    timestamps: "Add timestamps to the errors, warnings, and"
    user_space_docker_cmd: "(Linux/OS X only) Specify a user space docker command\\n(like udocker or dx-docker) that will be used to call\\n'pull' and 'run'"
    singularity: "[experimental] Use Singularity runtime for running\\ncontainers. Requires Singularity v2.3.2+ and Linux\\nwith kernel version v3.18+ or with overlayfs support\\nbackported."
    no_container: "Do not execute jobs in a Docker container, even when\\n`DockerRequirement` is specified under `hints`."
    tool_help: "Print command line help for tool"
    relative_deps: "When using --print-deps, print paths relative to\\nprimary file or current working directory."
    enable_dev: "Enable loading and running development versions of CWL"
    no_match_user: "Disable passing the current uid to `docker run --user`"
    disable_net: "Use docker's default networking for containers; the\\ndefault is to enable networking."
    custom_net: "Will be passed to `docker run` as the '--net'\\nparameter. Implies '--enable-net'."
    enable_ga_four_gh_tool_registry: "Enable resolution using GA4GH tool registry API"
    disable_ga_four_gh_tool_registry: "Disable resolution using GA4GH tool registry API"
    add_ga_four_gh_tool_registry: "Add a GA4GH tool registry endpoint to use for\\nresolution, default ['https://dockstore.org:8443']"
    on_error: "Desired workflow behavior when a step fails. One of\\n'stop' or 'continue'. Default is 'stop'."
    compute_checksum: "Compute checksum of contents while collecting outputs"
    no_compute_checksum: "Do not compute checksum of contents while collecting\\noutputs"
    relax_path_checks: "Relax requirements on path names to permit spaces and\\nhash characters."
    make_template: "Generate a template input object"
    force_docker_pull: "Pull latest docker image even if it is locally present"
    no_read_only: "Do not set root directory in the container as read-"
    record_container_id: "If enabled, store the Docker container ID into a file.\\nSee --cidfile-dir to specify the directory."
    cid_file_dir: "Directory for storing the Docker container ID file.\\nThe default is the current directory"
    cid_file_prefix: "Specify a prefix to the container ID filename. Final\\nfile name will be followed by a timestamp. The default\\nis no prefix.\\n"
    cwl_document: "path or URL to a CWL Workflow, CommandLineTool, or\\nExpressionTool. If the `inputs_object` has a\\n`cwl:tool` field indicating the path or URL to the\\ncwl_document, then the `workflow` argument is\\noptional."
    inputs_object: "path or URL to a YAML or JSON formatted description of\\nthe required input values for the given\\n`cwl_document`."
    notifications_dot: "--js-console          Enable javascript console output"
    only: "--overrides OVERRIDES"
  }
  output {
    File out_stdout = stdout()
    Directory out_basedir = "${in_basedir}"
    File out_tmp_outdir_prefix = "${in_tmp_outdir_prefix}"
    Directory out_move_outputs = "${in_move_outputs}"
    Directory out_copy_outputs = "${in_copy_outputs}"
  }
}