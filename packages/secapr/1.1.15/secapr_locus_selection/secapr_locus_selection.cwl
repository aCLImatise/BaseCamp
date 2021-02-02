class: CommandLineTool
id: secapr_locus_selection.cwl
inputs:
- id: in_input
  doc: The folder with the results of the reference based
  type: Directory
  inputBinding:
    prefix: --input
- id: in_n_loci_best
  doc: "The n loci that are best represented accross all\nsamples will be extracted."
  type: string
  inputBinding:
    prefix: --n
- id: in_read_cov
  doc: "The threshold for what average read coverage the\nselected target loci should\
    \ at least have."
  type: string
  inputBinding:
    prefix: --read_cov
- id: in_reference
  doc: "Path to reference library fasta file (secapr will find\nit by itself if the\
    \ reference assembly was executed\nwith secapr).\n"
  type: File
  inputBinding:
    prefix: --reference
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_assembly_dot
  doc: --output OUTPUT       The output directory where results will be safed.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- secapr
- locus_selection
