class: CommandLineTool
id: cg_load.2.cwl
inputs:
- id: map
  doc: 'MAP input directory path containing files '
  type: boolean
  inputBinding:
    prefix: --map
- id: output
  doc: 'output database path '
  type: boolean
  inputBinding:
    prefix: --output
- id: asm
  doc: 'ASM input directory path containing files '
  type: boolean
  inputBinding:
    prefix: --asm
- id: load_extra_evidence
  doc: 'load extra evidence files '
  type: boolean
  inputBinding:
    prefix: --load-extra-evidence
- id: schema
  doc: 'database schema file name '
  type: boolean
  inputBinding:
    prefix: --schema
- id: refseq_config
  doc: 'path to file with reference-to-accession  list '
  type: boolean
  inputBinding:
    prefix: --refseq-config
- id: refseq_path
  doc: 'path to directory with reference  sequences in fasta '
  type: boolean
  inputBinding:
    prefix: --refseq-path
- id: ref_file
  doc: 'path to fasta file with references '
  type: boolean
  inputBinding:
    prefix: --ref-file
- id: force
  doc: 'force output overwrite '
  type: boolean
  inputBinding:
    prefix: --force
- id: write_reference
  doc: 'force reference sequence write '
  type: boolean
  inputBinding:
    prefix: --write-reference
- id: write_read
  doc: 'force reads write '
  type: boolean
  inputBinding:
    prefix: --write-read
- id: qual_quant
  doc: "quality scores quantization level, can be  number (0: none, 1: 2bit, 2: 1bit),\
    \ or  string like '1:10,10:20,20:30,30:-' (which  is equivalent to 1) "
  type: boolean
  inputBinding:
    prefix: --qual-quant
- id: no_spot_group
  doc: 'do not write source file key to SPOT_GROUP  column '
  type: boolean
  inputBinding:
    prefix: --no-spotgroup
- id: min_mapq
  doc: 'filter secondary mappings by minimum weight  (phred) '
  type: boolean
  inputBinding:
    prefix: --min-mapq
- id: no_secondary
  doc: 'preserve only one mapping per half-DNB  based on weight '
  type: boolean
  inputBinding:
    prefix: --no-secondary
- id: single_mate
  doc: 'if secondary mates have duplicates preserve  only one in each pair based on
    weight '
  type: boolean
  inputBinding:
    prefix: --single-mate
- id: cluster_size
  doc: 'defines cluster window on the reference,  records only placement from given
    cluster  size; default is zero which means ignore '
  type: boolean
  inputBinding:
    prefix: --cluster-size
- id: input_no_threads
  doc: 'disable input files threaded caching '
  type: boolean
  inputBinding:
    prefix: --input-no-threads
- id: library
  doc: 'copy extra file/directory into output '
  type: boolean
  inputBinding:
    prefix: --library
- id: xml_log
  doc: 'produce XML-formatted log file '
  type: string
  inputBinding:
    prefix: --xml-log
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- cg-load.2
