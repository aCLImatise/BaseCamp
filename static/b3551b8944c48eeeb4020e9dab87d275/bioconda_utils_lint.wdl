version 1.0

task BiocondaUtilsLint {
  input {
    Array[String] packages
    String? cache
    Boolean? list_checks
    Array[String] exclude
    Boolean? push_status
    String? user
    String? commit
    Boolean? push_comment
    String? pull_request
    String? repo
    Array[String] git_range
    Boolean? full_report
    Boolean? try_fix
    Boolean? pdb
    String? loglevel
    String? log_file
    String? log_file_level
    String? log_command_max_lines
    String recipe_folder
    String config
  }
  command <<<
    bioconda-utils lint \
      ~{recipe_folder} \
      ~{config} \
      ~{if defined(packages) then ("--packages " +  '"' + packages + '"') else ""} \
      ~{if defined(cache) then ("--cache " +  '"' + cache + '"') else ""} \
      ~{true="--list-checks" false="" list_checks} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--push-status" false="" push_status} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(commit) then ("--commit " +  '"' + commit + '"') else ""} \
      ~{true="--push-comment" false="" push_comment} \
      ~{if defined(pull_request) then ("--pull-request " +  '"' + pull_request + '"') else ""} \
      ~{if defined(repo) then ("--repo " +  '"' + repo + '"') else ""} \
      ~{if defined(git_range) then ("--git-range " +  '"' + git_range + '"') else ""} \
      ~{true="--full-report" false="" full_report} \
      ~{true="--try-fix" false="" try_fix} \
      ~{true="--pdb" false="" pdb} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_file_level) then ("--logfile-level " +  '"' + log_file_level + '"') else ""} \
      ~{if defined(log_command_max_lines) then ("--log-command-max-lines " +  '"' + log_command_max_lines + '"') else ""}
  >>>
  parameter_meta {
    packages: "Glob for package[s] to build. Default is to build all packages. Can be specified more than once (default: '*')"
    cache: "To speed up debugging, use repodata cached locally in the provided filename. If the file does not exist, it will be created the first time. (default: -)"
    list_checks: "List the linting functions to be used and then exit (default: False)"
    exclude: "Exclude this linting function. Can be used multiple times. (default: -)"
    push_status: "If set, the lint status will be sent to the current commit on github. Also needs --user and --repo to be set. Requires the env var GITHUB_TOKEN to be set. Note that pull requests from forks will not have access to encrypted variables on ci, so this feature may be of limited use. (default: False)"
    user: "Github user (default: 'bioconda')"
    commit: "Commit on github on which to update status (default: -)"
    push_comment: "If set, the lint status will be posted as a comment in the corresponding pull request (given by --pull- request). Also needs --user and --repo to be set. Requires the env var GITHUB_TOKEN to be set. (default: False)"
    pull_request: "Pull request id on github on which to post a comment. (default: -)"
    repo: "Github repo (default: 'bioconda-recipes')"
    git_range: "Git range (e.g. commits or something like \"master HEAD\" to check commits in HEAD vs master, or just \"HEAD\" to include uncommitted changes). All recipes modified within this range will be built if not present in the channel. (default: -)"
    full_report: "Default behavior is to summarize the linting results; use this argument to get the full results as a TSV printed to stdout. (default: False)"
    try_fix: "Attempt to fix problems where found (default: False)"
    pdb: "Drop into debugger on exception (default: False)"
    loglevel: "Set logging level (debug, info, warning, error, critical) (default: 'info')"
    log_file: "Write log to file (default: -)"
    log_file_level: "Log level for log file (default: 'debug')"
    log_command_max_lines: "Limit lines emitted for commands executed (default: -)"
    recipe_folder: "Path to folder containing recipes (default: recipes/) (default: -)"
    config: "Path to Bioconda config (default: config.yml) (default: -)"
  }
}