class: CommandLineTool
id: ../../../checkm_coverage.cwl
inputs:
- id: extension
  doc: 'extension of bins (other files in directory are ignored) (default: fna)'
  type: string
  inputBinding:
    prefix: --extension
- id: all_reads
  doc: use all reads to estimate coverage instead of just those in proper pairs
  type: boolean
  inputBinding:
    prefix: --all_reads
- id: min_align
  doc: 'minimum alignment length as percentage of read length (default: 0.98)'
  type: long
  inputBinding:
    prefix: --min_align
- id: max_edit_dist
  doc: 'maximum edit distance as percentage of read length (default: 0.02)'
  type: long
  inputBinding:
    prefix: --max_edit_dist
- id: min_qc
  doc: 'minimum quality score (in phred) (default: 15)'
  type: long
  inputBinding:
    prefix: --min_qc
- id: threads
  doc: 'number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: bin_dir
  doc: directory containing bins (fasta format)
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: print results to file
  type: string
  inputBinding:
    position: 1
- id: bam_files
  doc: BAM files to parse
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- coverage
