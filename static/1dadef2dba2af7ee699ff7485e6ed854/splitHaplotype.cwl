class: CommandLineTool
id: ../../../splitHaplotype.cwl
inputs:
- id: path_input_classify
  doc: path to input seqStore of reads to classify.
  type: string
  inputBinding:
    prefix: -S
- id: range_reads_operate
  doc: '[-end]                     range of reads to operate on.'
  type: string
  inputBinding:
    prefix: -r
- id: path_input_fasta
  doc: path to input FASTA or FASTQ of reads to classify. these may be uncompressed,
    gzip, bzip2 or xz compressed.
  type: string
  inputBinding:
    prefix: -R
- id: parentkmershistogram_haplooutputfastagz
  doc: parent-kmers.histogram haplo-output.fasta.gz
  type: string
  inputBinding:
    prefix: -H
- id: cr
  doc: minimum ratio between best and second best to classify
  type: string
  inputBinding:
    prefix: -cr
- id: cl
  doc: minimum length of output read
  type: long
  inputBinding:
    prefix: -cl
- id: report_batches_processed
  doc: report how many batches per second are being processed
  type: boolean
  inputBinding:
    prefix: -v
- id: haplo_km_ers_dot_meryl
  doc: '- haplotype specific kmers contained in a meryl database.'
  type: string
  inputBinding:
    position: 0
- id: parent_km_ers_dot_histogram
  doc: '- a histogram of all parent kmers.'
  type: string
  inputBinding:
    position: 1
- id: haplo_output_dot_fasta_do_tgz
  doc: '- output reads assigned to this haplotype.'
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- splitHaplotype
