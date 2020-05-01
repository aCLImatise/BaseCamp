#!/usr/bin/env cwl-runner

baseCommand:
- cg-load.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: cg-load.2.10.3
inputs:
- doc: 'MAP input directory path containing files '
  id: map
  inputBinding:
    prefix: --map
  type: boolean
- doc: 'output database path '
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: 'ASM input directory path containing files '
  id: asm
  inputBinding:
    prefix: --asm
  type: boolean
- doc: 'load extra evidence files '
  id: load_extra_evidence
  inputBinding:
    prefix: --load-extra-evidence
  type: boolean
- doc: 'database schema file name '
  id: schema
  inputBinding:
    prefix: --schema
  type: boolean
- doc: 'path to file with reference-to-accession  list '
  id: refseq_config
  inputBinding:
    prefix: --refseq-config
  type: boolean
- doc: 'path to directory with reference  sequences in fasta '
  id: refseq_path
  inputBinding:
    prefix: --refseq-path
  type: boolean
- doc: 'path to fasta file with references '
  id: ref_file
  inputBinding:
    prefix: --ref-file
  type: boolean
- doc: 'force output overwrite '
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: 'force reference sequence write '
  id: write_reference
  inputBinding:
    prefix: --write-reference
  type: boolean
- doc: 'force reads write '
  id: write_read
  inputBinding:
    prefix: --write-read
  type: boolean
- doc: "quality scores quantization level, can be  number (0: none, 1: 2bit, 2: 1bit),\
    \ or  string like '1:10,10:20,20:30,30:-' (which  is equivalent to 1) "
  id: qual_quant
  inputBinding:
    prefix: --qual-quant
  type: boolean
- doc: 'do not write source file key to SPOT_GROUP  column '
  id: no_spot_group
  inputBinding:
    prefix: --no-spotgroup
  type: boolean
- doc: 'filter secondary mappings by minimum weight  (phred) '
  id: min_mapq
  inputBinding:
    prefix: --min-mapq
  type: boolean
- doc: 'preserve only one mapping per half-DNB  based on weight '
  id: no_secondary
  inputBinding:
    prefix: --no-secondary
  type: boolean
- doc: 'if secondary mates have duplicates preserve  only one in each pair based on
    weight '
  id: single_mate
  inputBinding:
    prefix: --single-mate
  type: boolean
- doc: 'defines cluster window on the reference,  records only placement from given
    cluster  size; default is zero which means ignore '
  id: cluster_size
  inputBinding:
    prefix: --cluster-size
  type: boolean
- doc: 'disable input files threaded caching '
  id: input_no_threads
  inputBinding:
    prefix: --input-no-threads
  type: boolean
- doc: 'copy extra file/directory into output '
  id: library
  inputBinding:
    prefix: --library
  type: boolean
- doc: 'produce XML-formatted log file '
  id: xml_log
  inputBinding:
    prefix: --xml-log
  type: string
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
