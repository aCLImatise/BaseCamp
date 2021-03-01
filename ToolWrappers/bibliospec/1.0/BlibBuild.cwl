class: CommandLineTool
id: BlibBuild.cwl
inputs:
- id: in_overwrite_existing_library
  doc: Overwrite existing library. Default append.
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_filename_read_were
  doc: <filename>    Read from file as though it were stdin.
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_result_file_names
  doc: Result file names from stdin. e.g. ls *sqt | BlibBuild -s new.blib.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_ignore_peptides_unmodified
  doc: Ignore peptides except those with the unmodified sequences from stdin.
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_ignore_peptides_modified
  doc: Ignore peptides except those with the modified sequences from stdin.
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_use_one_place
  doc: Use more than one decimal place when describing mass modifications.
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_file_size_size
  doc: <file size>   Minimum file size required to use caching for .dat files.  Specifiy
    units as B,K,G or M.  Default 800M.
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_score_threshold_psms
  doc: Score threshold (0-1) for PSMs to be included in library. Higher threshold
    is more exclusive.
  type: long?
  inputBinding:
    prefix: -c
- id: in_level_level_stderr
  doc: <level>       Level of output to stderr (silent, error, status, warn).  Default
    status.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_write_status_warning
  doc: Write status and warning messages to log file.
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_sqlite_memory_cache
  doc: SQLite memory cache size in Megs. Default 250M.
  type: long?
  inputBinding:
    prefix: -m
- id: in_zlib_compression_level
  doc: ZLib compression level (0-?). Default 3.
  type: long?
  inputBinding:
    prefix: -l
- id: in_lsid_library_id
  doc: LSID library ID. Default uses file name.
  type: File?
  inputBinding:
    prefix: -i
- id: in_lsid_authority_default
  doc: LSID authority. Default proteome.gs.washington.edu.
  type: string?
  inputBinding:
    prefix: -a
- id: in_specify_path_xml
  doc: Specify the path of XML modifications file for parsing MaxQuant files.
  type: File?
  inputBinding:
    prefix: -x
- id: in_specify_pusher_interval
  doc: Specify pusher interval for Waters final_fragment.csv files.
  type: double?
  inputBinding:
    prefix: -P
- id: in_document_format_writing
  doc: '[<filename>]   Document the .blib format by writing SQLite commands to a file,
    or stdout if no filename is given.'
  type: boolean?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- BlibBuild
