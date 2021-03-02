class: CommandLineTool
id: update_blastdb.pl.bak.cwl
inputs:
- id: in_decompress
  doc: "Downloads, decompresses the archives in the current working directory,\nand\
    \ deletes the downloaded archive to save disk space, while\npreserving the archive\
    \ checksum files (default: false)."
  type: boolean?
  inputBinding:
    prefix: --decompress
- id: in_show_all
  doc: "Show all available pre-formatted BLAST databases (default: false). The\noutput\
    \ of this option lists the database names which should be used\nwhen requesting\
    \ downloads or updates using this script.\nIt accepts the optional arguments:\
    \ 'tsv' and 'pretty' to produce\ntab-separated values and a human-readable format\
    \ respectively. These\nparameters elicit the display of additional metadata if\
    \ this is\navailable to the program. This metadata is displayed in columnar\n\
    format; the columns represent:\nname, description, size in gigabytes, date of\
    \ last update (YYYY-MM-DD\nformat)."
  type: boolean?
  inputBinding:
    prefix: --showall
- id: in_blast_db_version
  doc: "Specify which BLAST database version to download (default: 4).\nSupported\
    \ values: 4, 5"
  type: boolean?
  inputBinding:
    prefix: --blastdb_version
- id: in_passive
  doc: "Use passive FTP, useful when behind a firewall or working in the cloud\n(default:\
    \ true). To disable passive FTP, configure this option as\nfollows: --passive\
    \ no"
  type: boolean?
  inputBinding:
    prefix: --passive
- id: in_timeout
  doc: 'Timeout on connection to NCBI (default: 120 seconds).'
  type: boolean?
  inputBinding:
    prefix: --timeout
- id: in_force
  doc: "Force download even if there is a archive already on local directory\n(default:\
    \ false)."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: "Increment verbosity level (default: 1). Repeat this option multiple\ntimes\
    \ to increase the verbosity level (maximum 2)."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: 'Produce no output (default: false). Overrides the --verbose option.'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_num_cores
  doc: "Sets the number of cores to utilize to perform downloads in parallel\nwhen\
    \ data comes from GCS. Defaults to all cores (Linux and macos\nonly)."
  type: boolean?
  inputBinding:
    prefix: --num_cores
- id: in_errors_dot
  doc: BUGS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rmblast:2.10.0--h2d02072_0
cwlVersion: v1.1
baseCommand:
- update_blastdb.pl.bak
