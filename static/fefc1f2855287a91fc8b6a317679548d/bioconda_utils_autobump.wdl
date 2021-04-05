version 1.0

task BiocondautilsAutobump {
  input {
    Array[String] packages
    Array[String] exclude
    File? cache
    File? failed_urls
    File? unparsed_urls
    File? recipe_status
    String? exclude_sub_recipes
    Array[String] exclude_channels
    Boolean? ignore_blacklists
    Boolean? fetch_requirements
    Boolean? check_branch
    Boolean? create_branch
    Boolean? create_pr
    Boolean? only_active
    Boolean? no_shuffle
    Int? max_updates
    Boolean? dry_run
    Boolean? no_check_p_innings
    Boolean? no_follow_graph
    Boolean? no_check_version_update
    Boolean? no_check_pending_deps
    Boolean? sign
    String? commit_as
    Int? threads
    Boolean? pdb
    String? loglevel
    File? log_file
    File? log_file_level
    Int? log_command_max_lines
    String recipe_folder
    String config
  }
  command <<<
    bioconda_utils autobump \
      ~{recipe_folder} \
      ~{config} \
      ~{if defined(packages) then ("--packages " +  '"' + packages + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(cache) then ("--cache " +  '"' + cache + '"') else ""} \
      ~{if defined(failed_urls) then ("--failed-urls " +  '"' + failed_urls + '"') else ""} \
      ~{if defined(unparsed_urls) then ("--unparsed-urls " +  '"' + unparsed_urls + '"') else ""} \
      ~{if defined(recipe_status) then ("--recipe-status " +  '"' + recipe_status + '"') else ""} \
      ~{if defined(exclude_sub_recipes) then ("--exclude-subrecipes " +  '"' + exclude_sub_recipes + '"') else ""} \
      ~{if defined(exclude_channels) then ("--exclude-channels " +  '"' + exclude_channels + '"') else ""} \
      ~{if (ignore_blacklists) then "--ignore-blacklists" else ""} \
      ~{if (fetch_requirements) then "--fetch-requirements" else ""} \
      ~{if (check_branch) then "--check-branch" else ""} \
      ~{if (create_branch) then "--create-branch" else ""} \
      ~{if (create_pr) then "--create-pr" else ""} \
      ~{if (only_active) then "--only-active" else ""} \
      ~{if (no_shuffle) then "--no-shuffle" else ""} \
      ~{if defined(max_updates) then ("--max-updates " +  '"' + max_updates + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (no_check_p_innings) then "--no-check-pinnings" else ""} \
      ~{if (no_follow_graph) then "--no-follow-graph" else ""} \
      ~{if (no_check_version_update) then "--no-check-version-update" else ""} \
      ~{if (no_check_pending_deps) then "--no-check-pending-deps" else ""} \
      ~{if (sign) then "--sign" else ""} \
      ~{if defined(commit_as) then ("--commit-as " +  '"' + commit_as + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (pdb) then "--pdb" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bioconda-utils:0.17.2--py_0"
  }
  parameter_meta {
    packages: "Glob(s) for package[s] to scan. Can be specified more\\nthan once (default: '*')"
    exclude: "Globs for package[s] to exclude from scan. Can be\\nspecified more than once (default: -)"
    cache: "To speed up debugging, use repodata cached locally in\\nthe provided filename. If the file does not exist, it\\nwill be created the first time. Caution: The cache\\nwill not be updated if exclude-channels is changed\\n(default: -)"
    failed_urls: "Write urls with permanent failure to this file\\n(default: -)"
    unparsed_urls: "Write unrecognized urls to this file (default: -)"
    recipe_status: "Write status for each recipe to this file (default: -)"
    exclude_sub_recipes: "By default, only subrecipes explicitly enabled for\\nwatch in meta.yaml are considered. Set to 'always' to\\nexclude all subrecipes. Set to 'never' to include all\\nsubrecipes (default: -)"
    exclude_channels: "Exclude recipes building packages present in other\\nchannels. Set to 'none' to disable check. (default:\\n'conda-forge')"
    ignore_blacklists: "Do not exclude recipes from blacklist (default: False)"
    fetch_requirements: "Try to fetch python requirements. Please note that\\nthis requires downloading packages and executing\\nsetup.py, so presents a potential security problem.\\n(default: False)"
    check_branch: "Check if recipe has active branch (default: False)"
    create_branch: "Create branch for each update (default: False)"
    create_pr: "Create PR for each update. Implies create-branch.\\n(default: False)"
    only_active: "Check only recipes with active update (default: False)"
    no_shuffle: "Do not shuffle recipe order (default: False)"
    max_updates: "Exit after ARG updates (default: 0)"
    dry_run: "Don't update remote git or github\\\" (default: False)"
    no_check_p_innings: "Don't check for pinning updates (default: False)"
    no_follow_graph: "Don't process recipes in graph order or add dependent\\nrecipes to checks. Implies --no-skip-pending-deps.\\n(default: False)"
    no_check_version_update: "Don't check for version updates to recipes (default:\\nFalse)"
    no_check_pending_deps: "Don't check for recipes having a dependency with a\\npending update. Update all recipes, including those\\nhaving deps in need or rebuild. (default: False)"
    sign: "[SIGN]         Enable signing. Optionally takes keyid. (default: 0)"
    commit_as: "COMMIT_AS\\nSet user and email to use for committing. Takes\\nexactly two arguments. (default: -)"
    threads: "Limit maximum number of processes used. (default: 16)"
    pdb: "Drop into debugger on exception (default: False)"
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