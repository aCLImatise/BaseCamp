class: CommandLineTool
id: agat_sp_manage_UTRs.pl.cwl
inputs:
- id: in_ref_file
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --reffile
- id: in_number
  doc: "Threshold of exon's number of the UTR. Over or equal to this\nthreshold, the\
    \ UTR will be discarded. Default value is 5."
  type: long?
  inputBinding:
    prefix: --number
- id: in_tree_prime_utr
  doc: The threshold of the option <n> will be applied on the 3'UTR.
  type: long?
  inputBinding:
    prefix: --tree_prime_utr
- id: in_five_prime_utr
  doc: The threshold of the option <n> will be applied on the 5'UTR.
  type: long?
  inputBinding:
    prefix: --five_prime_utr
- id: in_both
  doc: "The threshold of the option <n> will be applied on genes where\nthe number\
    \ of UTR exon (3' and 5' additioned) is over it."
  type: long?
  inputBinding:
    prefix: --both
- id: in_plot
  doc: Allows to create an histogram in pdf of UTR sizes distribution.
  type: string?
  inputBinding:
    prefix: --plot
- id: in_output
  doc: Output gff3 file where the gene incriminated will be write.
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sp_manage_utrs_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output gff3 file where the gene incriminated will be write.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0
cwlVersion: v1.1
baseCommand:
- agat_sp_manage_UTRs.pl
