class: CommandLineTool
id: latf_load.2.10.8.cwl
inputs:
- id: in_output
  doc: Path and Name of the output database.
  type: File
  inputBinding:
    prefix: --output
- id: in_quality
  doc: "Quality encoding (PHRED_33, PHRED_64,\nLOGODDS)"
  type: boolean
  inputBinding:
    prefix: --quality
- id: in_tmpfs
  doc: Path to be used for scratch files.
  type: File
  inputBinding:
    prefix: --tmpfs
- id: in_qual_quant
  doc: "Quality scores quantization level, can be\nnumber (0: none default, 1: 2bit,\
    \ 2:\n1bit), or string like\n'1:10,10:20,20:30,30:-' (which is\nequivalent to\
    \ 1)."
  type: long
  inputBinding:
    prefix: --qual-quant
- id: in_cache_size
  doc: Set the cache size in MB for the temporary
  type: long
  inputBinding:
    prefix: --cache-size
- id: in_max_err_count
  doc: "Set the maximum number of errors to ignore\nfrom the FASTQ file"
  type: long
  inputBinding:
    prefix: --max-err-count
- id: in_platform
  doc: "Platform (ILLUMINA, LS454, SOLID,\nCOMPLETE_GENOMICS, HELICOS, PACBIO,\nIONTORRENT,\
    \ CAPILLARY)"
  type: boolean
  inputBinding:
    prefix: --platform
- id: in_max_err_pct
  doc: "acceptable percentage of spots creation\nerrors, default is 5"
  type: boolean
  inputBinding:
    prefix: --max-err-pct
- id: in_ignore_illumina_tags
  doc: "ignore barcodes contained in\nIllumina-formatted names"
  type: boolean
  inputBinding:
    prefix: --ignore-illumina-tags
- id: in_xml_log
  doc: produce XML-formatted log file
  type: File
  inputBinding:
    prefix: --xml-log
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File
  inputBinding:
    prefix: --option-file
- id: in_indices
  doc: '--max-rec-count <count>          Set the maximum number of records to '
  type: string
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'latf-load.2.10.8 : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path and Name of the output database.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- latf-load.2.10.8
