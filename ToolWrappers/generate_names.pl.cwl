class: CommandLineTool
id: generate_names.pl.cwl
inputs:
- id: in_out
  doc: Data directory to process. Default 'data/'.
  type: Directory
  inputBinding:
    prefix: --out
- id: in_tracks
  doc: "[,...]\nComma-separated list of which tracks to include in the names index.\n\
    If not passed, all tracks are indexed."
  type: string
  inputBinding:
    prefix: --tracks
- id: in_compress
  doc: "If passed, gzip the JSON files in the index, naming them *.jsonz\ninstead\
    \ of *.json. Like the --compress option for\nflatfile-to-json.pl and prepare-refseqs.pl,\
    \ if you use this option\nyou must configure your web server to serve these files\
    \ with the\ncorrect Content-Encoding HTTP header. See the JBrowse Configuration\n\
    Guide on the GMOD wiki for help with this."
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_incremental
  doc: "| -i\nDo not completely rebuild the names index in the given location,\nonly\
    \ insert new names into it."
  type: boolean
  inputBinding:
    prefix: --incremental
- id: in_location_limit
  doc: "Maximum number of distinct locations to store for a single name.\nDefault\
    \ 100."
  type: long
  inputBinding:
    prefix: --locationLimit
- id: in_mem
  doc: "Number of bytes of RAM we are allowed to use for caching memory.\nDefault\
    \ 256000000 (256 MiB). If your machine has enough RAM,\nincreasing this can speed\
    \ up this script's running time\nsignificantly."
  type: long
  inputBinding:
    prefix: --mem
- id: in_workdir
  doc: "Use the given location for building the names index, copying the\nindex over\
    \ to the destination location when fully built. By default,\nbuilds the index\
    \ in the output location.\nName indexing is a very I/O intensive operation, because\
    \ the\nfilesystem is used to store intermediate results in order to keep\nthe\
    \ RAM usage reasonable. If a fast filesystem (e.g. tmpfs) is\navailable and large\
    \ enough, indexing can be speeded up by using it\nto store the intermediate results\
    \ of name indexing."
  type: string
  inputBinding:
    prefix: --workdir
- id: in_completion_limit
  doc: "Maximum number of name completions to store for a given prefix.\nDefault 20.\
    \ Set to 0 to disable auto-completion of feature names.\nNote that the name index\
    \ always contains exact matches for feature\nnames; this setting only disables\
    \ autocompletion based on incomplete\nnames."
  type: long
  inputBinding:
    prefix: --completionLimit
- id: in_verbose
  doc: Print more progress messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_generate_names_do_tpl
  doc: "\\\n[ --out <output directory> ]         \\\n[ --verbose ]"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- generate-names.pl
