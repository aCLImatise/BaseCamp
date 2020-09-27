class: CommandLineTool
id: bioconda_utils_build.cwl
inputs:
- id: in_packages
  doc: "Glob for package[s] to build. Default is to build all\npackages. Can be specified\
    \ more than once (default:\n'*')"
  type: string[]
  inputBinding:
    prefix: --packages
- id: in_git_range
  doc: "Git range (e.g. commits or something like \"master\nHEAD\" to check commits\
    \ in HEAD vs master, or just\n\"HEAD\" to include uncommitted changes). All recipes\n\
    modified within this range will be built if not\npresent in the channel. (default:\
    \ -)"
  type: string[]
  inputBinding:
    prefix: --git-range
- id: in_test_only
  doc: 'Test packages instead of building (default: False)'
  type: boolean
  inputBinding:
    prefix: --testonly
- id: in_force
  doc: "Force building the recipe even if it already exists in\nthe bioconda channel.\
    \ If --force is specified, --git-\nrange is ignored and only those packages matching\n\
    --packages globs will be built. (default: False)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_docker
  doc: 'Build packages in docker container. (default: -)'
  type: boolean
  inputBinding:
    prefix: --docker
- id: in_mulled_test
  doc: "Run a mulled-build test on the built package (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --mulled-test
- id: in_build_script_template
  doc: "Filename to optionally replace build script template\nused by the Docker container.\
    \ By default use\ndocker_utils.BUILD_SCRIPT_TEMPLATE. Only used if\n--docker is\
    \ True. (default: -)"
  type: File
  inputBinding:
    prefix: --build_script_template
- id: in_pkg_dir
  doc: "Specifies the directory to which container-built\npackages should be stored\
    \ on the host. Default is to\nuse the host's conda-bld dir. If --docker is not\n\
    specified, then this argument is ignored. (default: -)"
  type: Directory
  inputBinding:
    prefix: --pkg_dir
- id: in_anaconda_upload
  doc: "After building recipes, upload them to Anaconda. This\nrequires $ANACONDA_TOKEN\
    \ to be set. (default: False)"
  type: boolean
  inputBinding:
    prefix: --anaconda-upload
- id: in_mulled_upload_target
  doc: "Provide a quay.io target to push mulled docker images\nto. (default: -)"
  type: string
  inputBinding:
    prefix: --mulled-upload-target
- id: in_build_image
  doc: "Build temporary docker build image with conda/conda-\nbuild version matching\
    \ local versions (default: False)"
  type: boolean
  inputBinding:
    prefix: --build-image
- id: in_keep_image
  doc: "After building recipes, the created Docker image is\nremoved by default to\
    \ save disk space. Use this\nargument to disable this behavior. (default: False)"
  type: boolean
  inputBinding:
    prefix: --keep-image
- id: in_pre_lint
  doc: "Just before each recipe, apply the linting functions\nto it. This can be used\
    \ as an alternative to linting\nall recipes before any building takes place with\
    \ the\n`bioconda-utils lint` command. (default: False)"
  type: boolean
  inputBinding:
    prefix: --prelint
- id: in_lint_exclude
  doc: "Exclude this linting function. Can be used multiple\ntimes. (default: -)"
  type: string[]
  inputBinding:
    prefix: --lint-exclude
- id: in_check_channels
  doc: "Channels to check recipes against before building. Any\nrecipe already present\
    \ in one of these channels will\nbe skipped. The default is the first two channels\n\
    specified in the config file. Note that this is\nignored if you specify --git-range.\
    \ (default: -)"
  type: string[]
  inputBinding:
    prefix: --check-channels
- id: in_n_workers
  doc: "The number of parallel workers that are in use. This\nis intended for use\
    \ in cases such as the \"bulk\"\nbranch, where there are multiple parallel workers\n\
    building and uploading recipes. In essence, this\ncauses bioconda-utils to process\
    \ every Nth sub-DAG,\nwhere N is the value you give to this option. The\ndefault\
    \ is 1, which is intended for cases where there\nare NOT parallel workers (i.e.,\
    \ the majority of\ncases). This should generally NOT be used in\nconjunctions\
    \ with the --packages or --git-range\noptions! (default: 1)"
  type: long
  inputBinding:
    prefix: --n-workers
- id: in_worker_offset
  doc: "This is only used if --nWorkers is >1. In that case,\nthen each instance of\
    \ bioconda-utils will process\nevery Nth sub-DAG. This option gives the 0-based\n\
    offset for that. For example, if \"--n-workers 5\n--worker-offset 0\" is used,\
    \ then this instance of\nbioconda-utils will process the 1st, 6th, 11th, etc.\n\
    sub-DAGs. Equivalently, using \"--n-workers 5 --worker-\noffset 1\" will result\
    \ in sub-DAGs 2, 7, 12, etc. being\nprocessed. If you use more than one worker,\
    \ then make\nsure to give each a different offset! (default: 0)"
  type: long
  inputBinding:
    prefix: --worker-offset
- id: in_keep_old_work
  doc: "Do not remove anything from environment, even after\nsuccessful build and\
    \ test. (default: False)"
  type: boolean
  inputBinding:
    prefix: --keep-old-work
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
- build
