version 1.0

task BiocondautilsBuild {
  input {
    Array[String] packages
    Array[String] git_range
    Boolean? test_only
    Boolean? force
    Boolean? docker
    Boolean? mulled_test
    File? build_script_template
    Directory? pkg_dir
    Boolean? anaconda_upload
    String? mulled_upload_target
    Boolean? build_image
    Boolean? keep_image
    Boolean? pre_lint
    Array[String] lint_exclude
    Array[String] check_channels
    Int? n_workers
    Int? worker_offset
    Boolean? keep_old_work
    String? loglevel
    File? log_file
    File? log_file_level
    Int? log_command_max_lines
    String recipe_folder
    String config
  }
  command <<<
    bioconda_utils build \
      ~{recipe_folder} \
      ~{config} \
      ~{if defined(packages) then ("--packages " +  '"' + packages + '"') else ""} \
      ~{if defined(git_range) then ("--git-range " +  '"' + git_range + '"') else ""} \
      ~{if (test_only) then "--testonly" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (docker) then "--docker" else ""} \
      ~{if (mulled_test) then "--mulled-test" else ""} \
      ~{if defined(build_script_template) then ("--build_script_template " +  '"' + build_script_template + '"') else ""} \
      ~{if defined(pkg_dir) then ("--pkg_dir " +  '"' + pkg_dir + '"') else ""} \
      ~{if (anaconda_upload) then "--anaconda-upload" else ""} \
      ~{if defined(mulled_upload_target) then ("--mulled-upload-target " +  '"' + mulled_upload_target + '"') else ""} \
      ~{if (build_image) then "--build-image" else ""} \
      ~{if (keep_image) then "--keep-image" else ""} \
      ~{if (pre_lint) then "--prelint" else ""} \
      ~{if defined(lint_exclude) then ("--lint-exclude " +  '"' + lint_exclude + '"') else ""} \
      ~{if defined(check_channels) then ("--check-channels " +  '"' + check_channels + '"') else ""} \
      ~{if defined(n_workers) then ("--n-workers " +  '"' + n_workers + '"') else ""} \
      ~{if defined(worker_offset) then ("--worker-offset " +  '"' + worker_offset + '"') else ""} \
      ~{if (keep_old_work) then "--keep-old-work" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bioconda-utils:0.17.5--pyhdfd78af_0"
  }
  parameter_meta {
    packages: "Glob for package[s] to build. Default is to build all\\npackages. Can be specified more than once (default:\\n'*')"
    git_range: "Git range (e.g. commits or something like \\\"master\\nHEAD\\\" to check commits in HEAD vs master, or just\\n\\\"HEAD\\\" to include uncommitted changes). All recipes\\nmodified within this range will be built if not\\npresent in the channel. (default: -)"
    test_only: "Test packages instead of building (default: False)"
    force: "Force building the recipe even if it already exists in\\nthe bioconda channel. If --force is specified, --git-\\nrange is ignored and only those packages matching\\n--packages globs will be built. (default: False)"
    docker: "Build packages in docker container. (default: -)"
    mulled_test: "Run a mulled-build test on the built package (default:\\nFalse)"
    build_script_template: "Filename to optionally replace build script template\\nused by the Docker container. By default use\\ndocker_utils.BUILD_SCRIPT_TEMPLATE. Only used if\\n--docker is True. (default: -)"
    pkg_dir: "Specifies the directory to which container-built\\npackages should be stored on the host. Default is to\\nuse the host's conda-bld dir. If --docker is not\\nspecified, then this argument is ignored. (default: -)"
    anaconda_upload: "After building recipes, upload them to Anaconda. This\\nrequires $ANACONDA_TOKEN to be set. (default: False)"
    mulled_upload_target: "Provide a quay.io target to push mulled docker images\\nto. (default: -)"
    build_image: "Build temporary docker build image with conda/conda-\\nbuild version matching local versions (default: False)"
    keep_image: "After building recipes, the created Docker image is\\nremoved by default to save disk space. Use this\\nargument to disable this behavior. (default: False)"
    pre_lint: "Just before each recipe, apply the linting functions\\nto it. This can be used as an alternative to linting\\nall recipes before any building takes place with the\\n`bioconda-utils lint` command. (default: False)"
    lint_exclude: "Exclude this linting function. Can be used multiple\\ntimes. (default: -)"
    check_channels: "Channels to check recipes against before building. Any\\nrecipe already present in one of these channels will\\nbe skipped. The default is the first two channels\\nspecified in the config file. Note that this is\\nignored if you specify --git-range. (default: -)"
    n_workers: "The number of parallel workers that are in use. This\\nis intended for use in cases such as the \\\"bulk\\\"\\nbranch, where there are multiple parallel workers\\nbuilding and uploading recipes. In essence, this\\ncauses bioconda-utils to process every Nth sub-DAG,\\nwhere N is the value you give to this option. The\\ndefault is 1, which is intended for cases where there\\nare NOT parallel workers (i.e., the majority of\\ncases). This should generally NOT be used in\\nconjunctions with the --packages or --git-range\\noptions! (default: 1)"
    worker_offset: "This is only used if --nWorkers is >1. In that case,\\nthen each instance of bioconda-utils will process\\nevery Nth sub-DAG. This option gives the 0-based\\noffset for that. For example, if \\\"--n-workers 5\\n--worker-offset 0\\\" is used, then this instance of\\nbioconda-utils will process the 1st, 6th, 11th, etc.\\nsub-DAGs. Equivalently, using \\\"--n-workers 5 --worker-\\noffset 1\\\" will result in sub-DAGs 2, 7, 12, etc. being\\nprocessed. If you use more than one worker, then make\\nsure to give each a different offset! (default: 0)"
    keep_old_work: "Do not remove anything from environment, even after\\nsuccessful build and test. (default: False)"
    loglevel: "Set logging level (debug, info, warning, error,\\ncritical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)\\n"
    recipe_folder: "Path to folder containing recipes (default: recipes/)\\n(default: -)"
    config: "Path to Bioconda config (default: config.yml)\\n(default: -)"
  }
  output {
    File out_stdout = stdout()
  }
}