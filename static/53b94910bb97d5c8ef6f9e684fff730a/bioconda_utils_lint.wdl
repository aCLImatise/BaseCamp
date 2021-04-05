version 1.0

task BiocondautilsLint {
  input {
    Array[String] packages
    File? cache
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
    File? log_file
    File? log_file_level
    Int? log_command_max_lines
    String recipe_folder
    String config
  }
  command <<<
    bioconda_utils lint \
      ~{recipe_folder} \
      ~{config} \
      ~{if defined(packages) then ("--packages " +  '"' + packages + '"') else ""} \
      ~{if defined(cache) then ("--cache " +  '"' + cache + '"') else ""} \
      ~{if (list_checks) then "--list-checks" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (push_status) then "--push-status" else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(commit) then ("--commit " +  '"' + commit + '"') else ""} \
      ~{if (push_comment) then "--push-comment" else ""} \
      ~{if defined(pull_request) then ("--pull-request " +  '"' + pull_request + '"') else ""} \
      ~{if defined(repo) then ("--repo " +  '"' + repo + '"') else ""} \
      ~{if defined(git_range) then ("--git-range " +  '"' + git_range + '"') else ""} \
      ~{if (full_report) then "--full-report" else ""} \
      ~{if (try_fix) then "--try-fix" else ""} \
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
    packages: "Glob for package[s] to build. Default is to build all\\npackages. Can be specified more than once (default:\\n'*')"
    cache: "To speed up debugging, use repodata cached locally in\\nthe provided filename. If the file does not exist, it\\nwill be created the first time. (default: -)"
    list_checks: "List the linting functions to be used and then exit\\n(default: False)"
    exclude: "Exclude this linting function. Can be used multiple\\ntimes. (default: -)"
    push_status: "If set, the lint status will be sent to the current\\ncommit on github. Also needs --user and --repo to be\\nset. Requires the env var GITHUB_TOKEN to be set. Note\\nthat pull requests from forks will not have access to\\nencrypted variables on ci, so this feature may be of\\nlimited use. (default: False)"
    user: "Github user (default: 'bioconda')"
    commit: "Commit on github on which to update status (default:\\n-)"
    push_comment: "If set, the lint status will be posted as a comment in\\nthe corresponding pull request (given by --pull-\\nrequest). Also needs --user and --repo to be set.\\nRequires the env var GITHUB_TOKEN to be set. (default:\\nFalse)"
    pull_request: "Pull request id on github on which to post a comment.\\n(default: -)"
    repo: "Github repo (default: 'bioconda-recipes')"
    git_range: "Git range (e.g. commits or something like \\\"master\\nHEAD\\\" to check commits in HEAD vs master, or just\\n\\\"HEAD\\\" to include uncommitted changes). All recipes\\nmodified within this range will be built if not\\npresent in the channel. (default: -)"
    full_report: "Default behavior is to summarize the linting results;\\nuse this argument to get the full results as a TSV\\nprinted to stdout. (default: False)"
    try_fix: "Attempt to fix problems where found (default: False)"
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