version 1.0

task BiocondaUtilsAutobump {
  input {
    Array[String] packages
    Array[String] exclude
    String? cache
    String? failed_urls
    String? unparsed_urls
    String? recipe_status
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
    Boolean? bump_only_python
    Boolean? sign
    String? commit_as
    String? threads
    Boolean? pdb
    String? loglevel
    String? log_file
    String? log_file_level
    String? log_command_max_lines
    String recipe_folder
    String config
  }
  command <<<
    bioconda-utils autobump \
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
      ~{true="--ignore-blacklists" false="" ignore_blacklists} \
      ~{true="--fetch-requirements" false="" fetch_requirements} \
      ~{true="--check-branch" false="" check_branch} \
      ~{true="--create-branch" false="" create_branch} \
      ~{true="--create-pr" false="" create_pr} \
      ~{true="--only-active" false="" only_active} \
      ~{true="--no-shuffle" false="" no_shuffle} \
      ~{if defined(max_updates) then ("--max-updates " +  '"' + max_updates + '"') else ""} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--no-check-pinnings" false="" no_check_p_innings} \
      ~{true="--no-follow-graph" false="" no_follow_graph} \
      ~{true="--no-check-version-update" false="" no_check_version_update} \
      ~{true="--no-check-pending-deps" false="" no_check_pending_deps} \
      ~{true="--bump-only-python" false="" bump_only_python} \
      ~{true="--sign" false="" sign} \
      ~{if defined(commit_as) then ("--commit-as " +  '"' + commit_as + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--pdb" false="" pdb} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  parameter_meta {
    packages: "Glob(s) for package[s] to scan. Can be specified more than once (default: '*')"
    exclude: "Globs for package[s] to exclude from scan. Can be specified more than once (default: -)"
    cache: "To speed up debugging, use repodata cached locally in the provided filename. If the file does not exist, it will be created the first time. Caution: The cache will not be updated if exclude-channels is changed (default: -)"
    failed_urls: "Write urls with permanent failure to this file (default: -)"
    unparsed_urls: "Write unrecognized urls to this file (default: -)"
    recipe_status: "Write status for each recipe to this file (default: -)"
    exclude_sub_recipes: "By default, only subrecipes explicitly enabled for watch in meta.yaml are considered. Set to 'always' to exclude all subrecipes. Set to 'never' to include all subrecipes (default: -)"
    exclude_channels: "Exclude recipes building packages present in other channels. Set to 'none' to disable check. (default: 'conda-forge')"
    ignore_blacklists: "Do not exclude recipes from blacklist (default: False)"
    fetch_requirements: "Try to fetch python requirements. Please note that this requires downloading packages and executing setup.py, so presents a potential security problem. (default: False)"
    check_branch: "Check if recipe has active branch (default: False)"
    create_branch: "Create branch for each update (default: False)"
    create_pr: "Create PR for each update. Implies create-branch. (default: False)"
    only_active: "Check only recipes with active update (default: False)"
    no_shuffle: "Do not shuffle recipe order (default: False)"
    max_updates: "Exit after ARG updates (default: 0)"
    dry_run: "Don't update remote git or github\" (default: False)"
    no_check_p_innings: "Don't check for pinning updates (default: False)"
    no_follow_graph: "Don't process recipes in graph order or add dependent recipes to checks. Implies --no-skip-pending-deps. (default: False)"
    no_check_version_update: "Don't check for version updates to recipes (default: False)"
    no_check_pending_deps: "Don't check for recipes having a dependency with a pending update. Update all recipes, including those having deps in need or rebuild. (default: False)"
    bump_only_python: "Bump package build numbers even if the only applicable pinning change is the python version. This is generally required unless you plan on building everything. (default: False)"
    sign: "[SIGN]         Enable signing. Optionally takes keyid. (default: 0)"
    commit_as: "COMMIT_AS Set user and email to use for committing. Takes exactly two arguments. (default: -)"
    threads: "Limit maximum number of processes used. (default: 16)"
    pdb: "Drop into debugger on exception (default: False)"
    loglevel: "Set logging level (debug, info, warning, error, critical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)"
    recipe_folder: "Path to folder containing recipes (default: recipes/) (default: -)"
    config: "Path to Bioconda config (default: config.yml) (default: -)"
  }
}