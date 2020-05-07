class: CommandLineTool
id: deblur_build_biom_table.cwl
inputs:
- id: min_reads
  doc: 'In output biom table - keep only sequences appearing at least min-reads in
    all samples combined.  [default: 10]'
  type: long
  inputBinding:
    prefix: --min-reads
- id: file_type
  doc: 'ending of files to be added to the biom table [default: .fasta.trim.derep.no_artifacts.msa.debl
    ur.no_chimeras]'
  type: string
  inputBinding:
    prefix: --file_type
- id: log_level
  doc: 'RANGE  Level of messages for log file(range 1-debug to 5-critical  [default:
    2]'
  type: long
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: 'log file name  [default: deblur.log]'
  type: File
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- deblur
- build-biom-table
