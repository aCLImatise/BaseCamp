class: CommandLineTool
id: splitHaplotype.cwl
inputs:
- id: in_range_reads_operate
  doc: '[-end]                     range of reads to operate on.'
  type: string?
  inputBinding:
    prefix: -r
- id: in_path_input_fasta
  doc: "path to input FASTA or FASTQ of reads to classify.\nthese may be uncompressed,\
    \ gzip, bzip2 or xz compressed."
  type: File?
  inputBinding:
    prefix: -R
- id: in_parentkmershistogram_haplooutputfastagz
  doc: parent-kmers.histogram haplo-output.fasta.gz
  type: string?
  inputBinding:
    prefix: -H
- id: in_cr
  doc: minimum ratio between best and second best to classify
  type: string?
  inputBinding:
    prefix: -cr
- id: in_cl
  doc: minimum length of output read
  type: long?
  inputBinding:
    prefix: -cl
- id: in_report_batches_processed
  doc: report how many batches per second are being processed
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_s
  doc: ''
  type: string[]
  inputBinding:
    prefix: -S
- id: in_inputs_dot
  doc: -S seqStore                      path to input seqStore of reads to classify.
  type: string
  inputBinding:
    position: 0
- id: in_haplo_km_ers_dot_meryl
  doc: '- haplotype specific kmers contained in a meryl database.'
  type: string
  inputBinding:
    position: 0
- id: in_parent_km_ers_dot_histogram
  doc: '- a histogram of all parent kmers.'
  type: string
  inputBinding:
    position: 1
- id: in_haplo_output_dot_fasta_do_tgz
  doc: '- output reads assigned to this haplotype.'
  type: string
  inputBinding:
    position: 2
- id: in_option_dot
  doc: Reads not assigned to any haplotype are written to the file specified
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- splitHaplotype
