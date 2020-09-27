class: CommandLineTool
id: bioconda_utils_autobump.cwl
inputs:
- id: in_packages
  doc: "Glob(s) for package[s] to scan. Can be specified more\nthan once (default:\
    \ '*')"
  type: string[]
  inputBinding:
    prefix: --packages
- id: in_exclude
  doc: "Globs for package[s] to exclude from scan. Can be\nspecified more than once\
    \ (default: -)"
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_cache
  doc: "To speed up debugging, use repodata cached locally in\nthe provided filename.\
    \ If the file does not exist, it\nwill be created the first time. Caution: The\
    \ cache\nwill not be updated if exclude-channels is changed\n(default: -)"
  type: File
  inputBinding:
    prefix: --cache
- id: in_failed_urls
  doc: "Write urls with permanent failure to this file\n(default: -)"
  type: File
  inputBinding:
    prefix: --failed-urls
- id: in_unparsed_urls
  doc: 'Write unrecognized urls to this file (default: -)'
  type: File
  inputBinding:
    prefix: --unparsed-urls
- id: in_recipe_status
  doc: 'Write status for each recipe to this file (default: -)'
  type: File
  inputBinding:
    prefix: --recipe-status
- id: in_exclude_sub_recipes
  doc: "By default, only subrecipes explicitly enabled for\nwatch in meta.yaml are\
    \ considered. Set to 'always' to\nexclude all subrecipes. Set to 'never' to include\
    \ all\nsubrecipes (default: -)"
  type: string
  inputBinding:
    prefix: --exclude-subrecipes
- id: in_exclude_channels
  doc: "Exclude recipes building packages present in other\nchannels. Set to 'none'\
    \ to disable check. (default:\n'conda-forge')"
  type: string[]
  inputBinding:
    prefix: --exclude-channels
- id: in_ignore_blacklists
  doc: 'Do not exclude recipes from blacklist (default: False)'
  type: boolean
  inputBinding:
    prefix: --ignore-blacklists
- id: in_fetch_requirements
  doc: "Try to fetch python requirements. Please note that\nthis requires downloading\
    \ packages and executing\nsetup.py, so presents a potential security problem.\n\
    (default: False)"
  type: boolean
  inputBinding:
    prefix: --fetch-requirements
- id: in_check_branch
  doc: 'Check if recipe has active branch (default: False)'
  type: boolean
  inputBinding:
    prefix: --check-branch
- id: in_create_branch
  doc: 'Create branch for each update (default: False)'
  type: boolean
  inputBinding:
    prefix: --create-branch
- id: in_create_pr
  doc: "Create PR for each update. Implies create-branch.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --create-pr
- id: in_only_active
  doc: 'Check only recipes with active update (default: False)'
  type: boolean
  inputBinding:
    prefix: --only-active
- id: in_no_shuffle
  doc: 'Do not shuffle recipe order (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-shuffle
- id: in_max_updates
  doc: 'Exit after ARG updates (default: 0)'
  type: long
  inputBinding:
    prefix: --max-updates
- id: in_dry_run
  doc: "Don't update remote git or github\" (default: False)"
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_no_check_p_innings
  doc: "Don't check for pinning updates (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-check-pinnings
- id: in_no_follow_graph
  doc: "Don't process recipes in graph order or add dependent\nrecipes to checks.\
    \ Implies --no-skip-pending-deps.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --no-follow-graph
- id: in_no_check_version_update
  doc: "Don't check for version updates to recipes (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --no-check-version-update
- id: in_no_check_pending_deps
  doc: "Don't check for recipes having a dependency with a\npending update. Update\
    \ all recipes, including those\nhaving deps in need or rebuild. (default: False)"
  type: boolean
  inputBinding:
    prefix: --no-check-pending-deps
- id: in_bump_only_python
  doc: "Bump package build numbers even if the only applicable\npinning change is\
    \ the python version. This is\ngenerally required unless you plan on building\n\
    everything. (default: False)"
  type: boolean
  inputBinding:
    prefix: --bump-only-python
- id: in_sign
  doc: '[SIGN]         Enable signing. Optionally takes keyid. (default: 0)'
  type: boolean
  inputBinding:
    prefix: --sign
- id: in_commit_as
  doc: "COMMIT_AS\nSet user and email to use for committing. Takes\nexactly two arguments.\
    \ (default: -)"
  type: string
  inputBinding:
    prefix: --commit-as
- id: in_threads
  doc: 'Limit maximum number of processes used. (default: 16)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_pdb
  doc: 'Drop into debugger on exception (default: False)'
  type: boolean
  inputBinding:
    prefix: --pdb
- id: in_loglevel
  doc: "Set logging level (debug, info, warning, error,\ncritical) (default: 'info')"
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_log_file
  doc: 'Write log to file (default: -)'
  type: File
  inputBinding:
    prefix: --logfile
- id: in_log_file_level
  doc: "Log level for log file (default: 'debug')"
  type: File
  inputBinding:
    prefix: --logfile-level
- id: in_log_command_max_lines
  doc: "Limit lines emitted for commands executed (default: -)\n"
  type: long
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
cwlVersion: v1.1
baseCommand:
- bioconda-utils
- autobump
