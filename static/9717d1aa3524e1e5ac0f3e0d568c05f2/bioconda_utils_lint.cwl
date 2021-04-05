class: CommandLineTool
id: bioconda_utils_lint.cwl
inputs:
- id: in_packages
  doc: "Glob for package[s] to build. Default is to build all\npackages. Can be specified\
    \ more than once (default:\n'*')"
  type: string[]
  inputBinding:
    prefix: --packages
- id: in_cache
  doc: "To speed up debugging, use repodata cached locally in\nthe provided filename.\
    \ If the file does not exist, it\nwill be created the first time. (default: -)"
  type: File?
  inputBinding:
    prefix: --cache
- id: in_list_checks
  doc: "List the linting functions to be used and then exit\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-checks
- id: in_exclude
  doc: "Exclude this linting function. Can be used multiple\ntimes. (default: -)"
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_push_status
  doc: "If set, the lint status will be sent to the current\ncommit on github. Also\
    \ needs --user and --repo to be\nset. Requires the env var GITHUB_TOKEN to be\
    \ set. Note\nthat pull requests from forks will not have access to\nencrypted\
    \ variables on ci, so this feature may be of\nlimited use. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --push-status
- id: in_user
  doc: "Github user (default: 'bioconda')"
  type: string?
  inputBinding:
    prefix: --user
- id: in_commit
  doc: "Commit on github on which to update status (default:\n-)"
  type: string?
  inputBinding:
    prefix: --commit
- id: in_push_comment
  doc: "If set, the lint status will be posted as a comment in\nthe corresponding\
    \ pull request (given by --pull-\nrequest). Also needs --user and --repo to be\
    \ set.\nRequires the env var GITHUB_TOKEN to be set. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --push-comment
- id: in_pull_request
  doc: "Pull request id on github on which to post a comment.\n(default: -)"
  type: string?
  inputBinding:
    prefix: --pull-request
- id: in_repo
  doc: "Github repo (default: 'bioconda-recipes')"
  type: string?
  inputBinding:
    prefix: --repo
- id: in_git_range
  doc: "Git range (e.g. commits or something like \"master\nHEAD\" to check commits\
    \ in HEAD vs master, or just\n\"HEAD\" to include uncommitted changes). All recipes\n\
    modified within this range will be built if not\npresent in the channel. (default:\
    \ -)"
  type: string[]
  inputBinding:
    prefix: --git-range
- id: in_full_report
  doc: "Default behavior is to summarize the linting results;\nuse this argument to\
    \ get the full results as a TSV\nprinted to stdout. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --full-report
- id: in_try_fix
  doc: 'Attempt to fix problems where found (default: False)'
  type: boolean?
  inputBinding:
    prefix: --try-fix
- id: in_pdb
  doc: 'Drop into debugger on exception (default: False)'
  type: boolean?
  inputBinding:
    prefix: --pdb
- id: in_loglevel
  doc: "Set logging level (debug, info, warning, error,\ncritical) (default: 'info')"
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_log_file
  doc: 'Write log to file (default: -)'
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_log_file_level
  doc: "Log level for log file (default: 'debug')"
  type: File?
  inputBinding:
    prefix: --logfile-level
- id: in_log_command_max_lines
  doc: "Limit lines emitted for commands executed (default: -)\n"
  type: long?
  inputBinding:
    prefix: --log-command-max-lines
- id: in_recipe_folder
  doc: "Path to folder containing recipes (default: recipes/)\n(default: -)"
  type: string
  inputBinding:
    position: 0
- id: in_config
  doc: "Path to Bioconda config (default: config.yml)\n(default: -)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bioconda-utils:0.17.2--py_0
cwlVersion: v1.1
baseCommand:
- bioconda-utils
- lint
