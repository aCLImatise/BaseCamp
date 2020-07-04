class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/BlibBuild.cwl
inputs:
- id: overwrite_existing_library
  doc: Overwrite existing library. Default append.
  type: boolean
  inputBinding:
    prefix: -o
- id: filename_read_file
  doc: <filename>    Read from file as though it were stdin.
  type: boolean
  inputBinding:
    prefix: -S
- id: result_file_names
  doc: Result file names from stdin. e.g. ls *sqt | BlibBuild -s new.blib.
  type: boolean
  inputBinding:
    prefix: -s
- id: ignore_peptides_unmodified
  doc: Ignore peptides except those with the unmodified sequences from stdin.
  type: boolean
  inputBinding:
    prefix: -u
- id: ignore_peptides_modified
  doc: Ignore peptides except those with the modified sequences from stdin.
  type: boolean
  inputBinding:
    prefix: -U
- id: use_one_place
  doc: Use more than one decimal place when describing mass modifications.
  type: boolean
  inputBinding:
    prefix: -H
- id: file_size_minimum
  doc: <file size>   Minimum file size required to use caching for .dat files.  Specifiy
    units as B,K,G or M.  Default 800M.
  type: boolean
  inputBinding:
    prefix: -C
- id: score_threshold_included
  doc: Score threshold (0-1) for PSMs to be included in library. Higher threshold
    is more exclusive.
  type: string
  inputBinding:
    prefix: -c
- id: level_level_output
  doc: <level>       Level of output to stderr (silent, error, status, warn).  Default
    status.
  type: boolean
  inputBinding:
    prefix: -v
- id: write_status_warning
  doc: Write status and warning messages to log file.
  type: boolean
  inputBinding:
    prefix: -L
- id: sqlite_memory_cache
  doc: SQLite memory cache size in Megs. Default 250M.
  type: long
  inputBinding:
    prefix: -m
- id: zlib_compression_level
  doc: ZLib compression level (0-?). Default 3.
  type: string
  inputBinding:
    prefix: -l
- id: lsid_library_id
  doc: LSID library ID. Default uses file name.
  type: string
  inputBinding:
    prefix: -i
- id: lsid_authority_default
  doc: LSID authority. Default proteome.gs.washington.edu.
  type: string
  inputBinding:
    prefix: -a
- id: specify_path_xml
  doc: Specify the path of XML modifications file for parsing MaxQuant files.
  type: File
  inputBinding:
    prefix: -x
- id: specify_pusher_interval
  doc: Specify pusher interval for Waters final_fragment.csv files.
  type: double
  inputBinding:
    prefix: -P
- id: document_blib_format
  doc: '[<filename>]   Document the .blib format by writing SQLite commands to a file,
    or stdout if no filename is given.'
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- BlibBuild
