class: CommandLineTool
id: bioconda_utils_lint.cwl
inputs:
- id: recipe_folder
  doc: 'Path to folder containing recipes (default: recipes/) (default: -)'
  type: string
  inputBinding:
    position: 0
- id: config
  doc: 'Path to Bioconda config (default: config.yml) (default: -)'
  type: string
  inputBinding:
    position: 1
- id: packages
  doc: "Glob for package[s] to build. Default is to build all packages. Can be specified\
    \ more than once (default: '*')"
  type: string[]
  inputBinding:
    prefix: --packages
- id: cache
  doc: 'To speed up debugging, use repodata cached locally in the provided filename.
    If the file does not exist, it will be created the first time. (default: -)'
  type: string
  inputBinding:
    prefix: --cache
- id: list_checks
  doc: 'List the linting functions to be used and then exit (default: False)'
  type: boolean
  inputBinding:
    prefix: --list-checks
- id: exclude
  doc: 'Exclude this linting function. Can be used multiple times. (default: -)'
  type: string[]
  inputBinding:
    prefix: --exclude
- id: push_status
  doc: 'If set, the lint status will be sent to the current commit on github. Also
    needs --user and --repo to be set. Requires the env var GITHUB_TOKEN to be set.
    Note that pull requests from forks will not have access to encrypted variables
    on ci, so this feature may be of limited use. (default: False)'
  type: boolean
  inputBinding:
    prefix: --push-status
- id: user
  doc: "Github user (default: 'bioconda')"
  type: string
  inputBinding:
    prefix: --user
- id: commit
  doc: 'Commit on github on which to update status (default: -)'
  type: string
  inputBinding:
    prefix: --commit
- id: push_comment
  doc: 'If set, the lint status will be posted as a comment in the corresponding pull
    request (given by --pull- request). Also needs --user and --repo to be set. Requires
    the env var GITHUB_TOKEN to be set. (default: False)'
  type: boolean
  inputBinding:
    prefix: --push-comment
- id: pull_request
  doc: 'Pull request id on github on which to post a comment. (default: -)'
  type: string
  inputBinding:
    prefix: --pull-request
- id: repo
  doc: "Github repo (default: 'bioconda-recipes')"
  type: string
  inputBinding:
    prefix: --repo
- id: git_range
  doc: 'Git range (e.g. commits or something like "master HEAD" to check commits in
    HEAD vs master, or just "HEAD" to include uncommitted changes). All recipes modified
    within this range will be built if not present in the channel. (default: -)'
  type: string[]
  inputBinding:
    prefix: --git-range
- id: full_report
  doc: 'Default behavior is to summarize the linting results; use this argument to
    get the full results as a TSV printed to stdout. (default: False)'
  type: boolean
  inputBinding:
    prefix: --full-report
- id: try_fix
  doc: 'Attempt to fix problems where found (default: False)'
  type: boolean
  inputBinding:
    prefix: --try-fix
- id: pdb
  doc: 'Drop into debugger on exception (default: False)'
  type: boolean
  inputBinding:
    prefix: --pdb
- id: loglevel
  doc: "Set logging level (debug, info, warning, error, critical) (default: 'info')"
  type: string
  inputBinding:
    prefix: --loglevel
- id: log_file
  doc: 'Write log to file (default: -)'
  type: string
  inputBinding:
    prefix: --logfile
- id: log_file_level
  doc: "Log level for log file (default: 'debug')"
  type: string
  inputBinding:
    prefix: --logfile-level
- id: log_command_max_lines
  doc: 'Limit lines emitted for commands executed (default: -)'
  type: string
  inputBinding:
    prefix: --log-command-max-lines
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconda-utils
- lint
