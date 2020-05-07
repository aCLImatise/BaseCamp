class: CommandLineTool
id: bioconda_utils_autobump.cwl
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
  doc: "Glob(s) for package[s] to scan. Can be specified more than once (default:\
    \ '*')"
  type: string[]
  inputBinding:
    prefix: --packages
- id: exclude
  doc: 'Globs for package[s] to exclude from scan. Can be specified more than once
    (default: -)'
  type: string[]
  inputBinding:
    prefix: --exclude
- id: cache
  doc: 'To speed up debugging, use repodata cached locally in the provided filename.
    If the file does not exist, it will be created the first time. Caution: The cache
    will not be updated if exclude-channels is changed (default: -)'
  type: string
  inputBinding:
    prefix: --cache
- id: failed_urls
  doc: 'Write urls with permanent failure to this file (default: -)'
  type: string
  inputBinding:
    prefix: --failed-urls
- id: unparsed_urls
  doc: 'Write unrecognized urls to this file (default: -)'
  type: string
  inputBinding:
    prefix: --unparsed-urls
- id: recipe_status
  doc: 'Write status for each recipe to this file (default: -)'
  type: string
  inputBinding:
    prefix: --recipe-status
- id: exclude_sub_recipes
  doc: "By default, only subrecipes explicitly enabled for watch in meta.yaml are\
    \ considered. Set to 'always' to exclude all subrecipes. Set to 'never' to include\
    \ all subrecipes (default: -)"
  type: string
  inputBinding:
    prefix: --exclude-subrecipes
- id: exclude_channels
  doc: "Exclude recipes building packages present in other channels. Set to 'none'\
    \ to disable check. (default: 'conda-forge')"
  type: string[]
  inputBinding:
    prefix: --exclude-channels
- id: ignore_blacklists
  doc: 'Do not exclude recipes from blacklist (default: False)'
  type: boolean
  inputBinding:
    prefix: --ignore-blacklists
- id: fetch_requirements
  doc: 'Try to fetch python requirements. Please note that this requires downloading
    packages and executing setup.py, so presents a potential security problem. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --fetch-requirements
- id: check_branch
  doc: 'Check if recipe has active branch (default: False)'
  type: boolean
  inputBinding:
    prefix: --check-branch
- id: create_branch
  doc: 'Create branch for each update (default: False)'
  type: boolean
  inputBinding:
    prefix: --create-branch
- id: create_pr
  doc: 'Create PR for each update. Implies create-branch. (default: False)'
  type: boolean
  inputBinding:
    prefix: --create-pr
- id: only_active
  doc: 'Check only recipes with active update (default: False)'
  type: boolean
  inputBinding:
    prefix: --only-active
- id: no_shuffle
  doc: 'Do not shuffle recipe order (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-shuffle
- id: max_updates
  doc: 'Exit after ARG updates (default: 0)'
  type: long
  inputBinding:
    prefix: --max-updates
- id: dry_run
  doc: "Don't update remote git or github\" (default: False)"
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: no_check_p_innings
  doc: "Don't check for pinning updates (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-check-pinnings
- id: no_follow_graph
  doc: "Don't process recipes in graph order or add dependent recipes to checks. Implies\
    \ --no-skip-pending-deps. (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-follow-graph
- id: no_check_version_update
  doc: "Don't check for version updates to recipes (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-check-version-update
- id: no_check_pending_deps
  doc: "Don't check for recipes having a dependency with a pending update. Update\
    \ all recipes, including those having deps in need or rebuild. (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-check-pending-deps
- id: bump_only_python
  doc: 'Bump package build numbers even if the only applicable pinning change is the
    python version. This is generally required unless you plan on building everything.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --bump-only-python
- id: sign
  doc: '[SIGN]         Enable signing. Optionally takes keyid. (default: 0)'
  type: boolean
  inputBinding:
    prefix: --sign
- id: commit_as
  doc: 'COMMIT_AS Set user and email to use for committing. Takes exactly two arguments.
    (default: -)'
  type: string
  inputBinding:
    prefix: --commit-as
- id: threads
  doc: 'Limit maximum number of processes used. (default: 16)'
  type: string
  inputBinding:
    prefix: --threads
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
- autobump
