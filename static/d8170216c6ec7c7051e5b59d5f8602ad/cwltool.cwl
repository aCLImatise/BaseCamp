class: CommandLineTool
id: cwltool.cwl
inputs:
- id: in_basedir
  doc: Output directory, default current directory
  type: Directory?
  inputBinding:
    prefix: --basedir
- id: in_parallel
  doc: "[experimental] Run jobs in parallel. Does not\ncurrently keep track of ResourceRequirements\
    \ like the\nnumber of coresor memory and can overload this system"
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_preserve_environment
  doc: "Preserve specific environment variable when running\nCommandLineTools. May\
    \ be provided multiple times."
  type: string?
  inputBinding:
    prefix: --preserve-environment
- id: in_preserve_entire_environment
  doc: "Preserve all environment variable when running\nCommandLineTools."
  type: boolean?
  inputBinding:
    prefix: --preserve-entire-environment
- id: in_rm_container
  doc: "Delete Docker container used by jobs after they exit\n(default)"
  type: boolean?
  inputBinding:
    prefix: --rm-container
- id: in_leave_container
  doc: Do not delete Docker container used by jobs after they
  type: boolean?
  inputBinding:
    prefix: --leave-container
- id: in_tmp_outdir_prefix
  doc: Path prefix for intermediate output directories
  type: File?
  inputBinding:
    prefix: --tmp-outdir-prefix
- id: in_cache_dir
  doc: "Directory to cache intermediate workflow outputs to\navoid recomputing steps."
  type: Directory?
  inputBinding:
    prefix: --cachedir
- id: in_rm_tmpdir
  doc: Delete intermediate temporary directories (default)
  type: boolean?
  inputBinding:
    prefix: --rm-tmpdir
- id: in_leave_tmpdir
  doc: Do not delete intermediate temporary directories
  type: boolean?
  inputBinding:
    prefix: --leave-tmpdir
- id: in_move_outputs
  doc: "Move output files to the workflow output directory and\ndelete intermediate\
    \ output directories (default)."
  type: Directory?
  inputBinding:
    prefix: --move-outputs
- id: in_leave_outputs
  doc: Leave output files in intermediate output directories.
  type: boolean?
  inputBinding:
    prefix: --leave-outputs
- id: in_copy_outputs
  doc: "Copy output files to the workflow output directory,\ndon't delete intermediate\
    \ output directories."
  type: Directory?
  inputBinding:
    prefix: --copy-outputs
- id: in_enable_pull
  doc: Try to pull Docker images
  type: boolean?
  inputBinding:
    prefix: --enable-pull
- id: in_disable_pull
  doc: Do not try to pull Docker images
  type: boolean?
  inputBinding:
    prefix: --disable-pull
- id: in_rdf_serializer
  doc: "Output RDF serialization format used by --print-rdf\n(one of turtle (default),\
    \ n3, nt, xml)"
  type: long?
  inputBinding:
    prefix: --rdf-serializer
- id: in_eval_timeout
  doc: "Time to wait for a Javascript expression to evaluate\nbefore giving an error,\
    \ default 20s."
  type: long?
  inputBinding:
    prefix: --eval-timeout
- id: in_print_rdf
  doc: Print corresponding RDF graph for workflow and exit
  type: boolean?
  inputBinding:
    prefix: --print-rdf
- id: in_print_dot
  doc: Print workflow visualization in graphviz format and
  type: boolean?
  inputBinding:
    prefix: --print-dot
- id: in_print_deps
  doc: Print CWL document dependencies.
  type: boolean?
  inputBinding:
    prefix: --print-deps
- id: in_print_input_deps
  doc: Print input object document dependencies.
  type: boolean?
  inputBinding:
    prefix: --print-input-deps
- id: in_pack
  doc: Combine components into single document and print.
  type: boolean?
  inputBinding:
    prefix: --pack
- id: in_validate
  doc: Validate CWL document only.
  type: boolean?
  inputBinding:
    prefix: --validate
- id: in_print_supported_versions
  doc: Print supported CWL specs.
  type: boolean?
  inputBinding:
    prefix: --print-supported-versions
- id: in_strict
  doc: "Strict validation (unrecognized or out of place fields\nare error)"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_non_strict
  doc: Lenient validation (ignore unrecognized fields)
  type: boolean?
  inputBinding:
    prefix: --non-strict
- id: in_skip_schemas
  doc: Skip loading of schemas
  type: boolean?
  inputBinding:
    prefix: --skip-schemas
- id: in_verbose
  doc: Default logging
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Only print warnings and errors.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Print even more logging
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_timestamps
  doc: Add timestamps to the errors, warnings, and
  type: boolean?
  inputBinding:
    prefix: --timestamps
- id: in_user_space_docker_cmd
  doc: "(Linux/OS X only) Specify a user space docker command\n(like udocker or dx-docker)\
    \ that will be used to call\n'pull' and 'run'"
  type: string?
  inputBinding:
    prefix: --user-space-docker-cmd
- id: in_singularity
  doc: "[experimental] Use Singularity runtime for running\ncontainers. Requires Singularity\
    \ v2.3.2+ and Linux\nwith kernel version v3.18+ or with overlayfs support\nbackported."
  type: boolean?
  inputBinding:
    prefix: --singularity
- id: in_no_container
  doc: "Do not execute jobs in a Docker container, even when\n`DockerRequirement`\
    \ is specified under `hints`."
  type: boolean?
  inputBinding:
    prefix: --no-container
- id: in_tool_help
  doc: Print command line help for tool
  type: boolean?
  inputBinding:
    prefix: --tool-help
- id: in_relative_deps
  doc: "When using --print-deps, print paths relative to\nprimary file or current\
    \ working directory."
  type: string?
  inputBinding:
    prefix: --relative-deps
- id: in_enable_dev
  doc: Enable loading and running development versions of CWL
  type: boolean?
  inputBinding:
    prefix: --enable-dev
- id: in_no_match_user
  doc: Disable passing the current uid to `docker run --user`
  type: boolean?
  inputBinding:
    prefix: --no-match-user
- id: in_disable_net
  doc: "Use docker's default networking for containers; the\ndefault is to enable\
    \ networking."
  type: boolean?
  inputBinding:
    prefix: --disable-net
- id: in_custom_net
  doc: "Will be passed to `docker run` as the '--net'\nparameter. Implies '--enable-net'."
  type: string?
  inputBinding:
    prefix: --custom-net
- id: in_enable_ga_four_gh_tool_registry
  doc: Enable resolution using GA4GH tool registry API
  type: boolean?
  inputBinding:
    prefix: --enable-ga4gh-tool-registry
- id: in_disable_ga_four_gh_tool_registry
  doc: Disable resolution using GA4GH tool registry API
  type: boolean?
  inputBinding:
    prefix: --disable-ga4gh-tool-registry
- id: in_add_ga_four_gh_tool_registry
  doc: "Add a GA4GH tool registry endpoint to use for\nresolution, default ['https://dockstore.org:8443']"
  type: long?
  inputBinding:
    prefix: --add-ga4gh-tool-registry
- id: in_on_error
  doc: "Desired workflow behavior when a step fails. One of\n'stop' or 'continue'.\
    \ Default is 'stop'."
  type: string?
  inputBinding:
    prefix: --on-error
- id: in_compute_checksum
  doc: Compute checksum of contents while collecting outputs
  type: boolean?
  inputBinding:
    prefix: --compute-checksum
- id: in_no_compute_checksum
  doc: "Do not compute checksum of contents while collecting\noutputs"
  type: boolean?
  inputBinding:
    prefix: --no-compute-checksum
- id: in_relax_path_checks
  doc: "Relax requirements on path names to permit spaces and\nhash characters."
  type: boolean?
  inputBinding:
    prefix: --relax-path-checks
- id: in_make_template
  doc: Generate a template input object
  type: boolean?
  inputBinding:
    prefix: --make-template
- id: in_force_docker_pull
  doc: Pull latest docker image even if it is locally present
  type: boolean?
  inputBinding:
    prefix: --force-docker-pull
- id: in_no_read_only
  doc: Do not set root directory in the container as read-
  type: boolean?
  inputBinding:
    prefix: --no-read-only
- id: in_record_container_id
  doc: "If enabled, store the Docker container ID into a file.\nSee --cidfile-dir\
    \ to specify the directory."
  type: boolean?
  inputBinding:
    prefix: --record-container-id
- id: in_cid_file_dir
  doc: "Directory for storing the Docker container ID file.\nThe default is the current\
    \ directory"
  type: File?
  inputBinding:
    prefix: --cidfile-dir
- id: in_cid_file_prefix
  doc: "Specify a prefix to the container ID filename. Final\nfile name will be followed\
    \ by a timestamp. The default\nis no prefix.\n"
  type: File?
  inputBinding:
    prefix: --cidfile-prefix
- id: in_cwl_document
  doc: "path or URL to a CWL Workflow, CommandLineTool, or\nExpressionTool. If the\
    \ `inputs_object` has a\n`cwl:tool` field indicating the path or URL to the\n\
    cwl_document, then the `workflow` argument is\noptional."
  type: string
  inputBinding:
    position: 0
- id: in_inputs_object
  doc: "path or URL to a YAML or JSON formatted description of\nthe required input\
    \ values for the given\n`cwl_document`."
  type: string
  inputBinding:
    position: 1
- id: in_notifications_dot
  doc: --js-console          Enable javascript console output
  type: string
  inputBinding:
    position: 1
- id: in_only
  doc: --overrides OVERRIDES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_basedir
  doc: Output directory, default current directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_basedir)
- id: out_tmp_outdir_prefix
  doc: Path prefix for intermediate output directories
  type: File?
  outputBinding:
    glob: $(inputs.in_tmp_outdir_prefix)
- id: out_move_outputs
  doc: "Move output files to the workflow output directory and\ndelete intermediate\
    \ output directories (default)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_move_outputs)
- id: out_copy_outputs
  doc: "Copy output files to the workflow output directory,\ndon't delete intermediate\
    \ output directories."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_copy_outputs)
hints: []
cwlVersion: v1.1
baseCommand:
- cwltool
