class: CommandLineTool
id: cg_load.2.10.8.cwl
inputs:
- id: in_map
  doc: MAP input directory path containing files
  type: boolean?
  inputBinding:
    prefix: --map
- id: in_output
  doc: output database path
  type: File?
  inputBinding:
    prefix: --output
- id: in_asm
  doc: ASM input directory path containing files
  type: boolean?
  inputBinding:
    prefix: --asm
- id: in_load_extra_evidence
  doc: load extra evidence files
  type: boolean?
  inputBinding:
    prefix: --load-extra-evidence
- id: in_schema
  doc: database schema file name
  type: boolean?
  inputBinding:
    prefix: --schema
- id: in_refseq_config
  doc: path to file with reference-to-accession
  type: boolean?
  inputBinding:
    prefix: --refseq-config
- id: in_ref_file
  doc: path to fasta file with references
  type: boolean?
  inputBinding:
    prefix: --ref-file
- id: in_force
  doc: force output overwrite
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_write_reference
  doc: force reference sequence write
  type: boolean?
  inputBinding:
    prefix: --write-reference
- id: in_write_read
  doc: force reads write
  type: boolean?
  inputBinding:
    prefix: --write-read
- id: in_qual_quant
  doc: "quality scores quantization level, can be\nnumber (0: none, 1: 2bit, 2: 1bit),\
    \ or\nstring like '1:10,10:20,20:30,30:-' (which\nis equivalent to 1)"
  type: boolean?
  inputBinding:
    prefix: --qual-quant
- id: in_no_spot_group
  doc: do not write source file key to SPOT_GROUP
  type: boolean?
  inputBinding:
    prefix: --no-spotgroup
- id: in_no_secondary
  doc: "preserve only one mapping per half-DNB\nbased on weight"
  type: boolean?
  inputBinding:
    prefix: --no-secondary
- id: in_single_mate
  doc: "if secondary mates have duplicates preserve\nonly one in each pair based on\
    \ weight"
  type: boolean?
  inputBinding:
    prefix: --single-mate
- id: in_cluster_size
  doc: "defines cluster window on the reference,\nrecords only placement from given\
    \ cluster\nsize; default is zero which means ignore"
  type: boolean?
  inputBinding:
    prefix: --cluster-size
- id: in_input_no_threads
  doc: disable input files threaded caching
  type: boolean?
  inputBinding:
    prefix: --input-no-threads
- id: in_library
  doc: copy extra file/directory into output
  type: File?
  inputBinding:
    prefix: --library
- id: in_xml_log
  doc: produce XML-formatted log file
  type: File?
  inputBinding:
    prefix: --xml-log
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_list
  doc: '-i|--refseq-path                 path to directory with reference '
  type: string
  inputBinding:
    position: 0
- id: in_column
  doc: '-q|--min-mapq                    filter secondary mappings by minimum weight '
  type: string
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'cg-load.2.10.8 : 2.10.8'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output database path
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_library
  doc: copy extra file/directory into output
  type: File?
  outputBinding:
    glob: $(inputs.in_library)
hints: []
cwlVersion: v1.1
baseCommand:
- cg-load.2.10.8
