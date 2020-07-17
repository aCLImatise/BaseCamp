class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_manage_UTRs.pl.cwl
inputs:
- id: ref_file
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --reffile
- id: number
  doc: Threshold of exon's number of the UTR. Over or equal to this threshold, the
    UTR will be discarded. Default value is 5.
  type: string
  inputBinding:
    prefix: --number
- id: tree_prime_utr
  doc: The threshold of the option <n> will be applied on the 3'UTR.
  type: string
  inputBinding:
    prefix: --tree_prime_utr
- id: five_prime_utr
  doc: The threshold of the option <n> will be applied on the 5'UTR.
  type: string
  inputBinding:
    prefix: --five_prime_utr
- id: both
  doc: The threshold of the option <n> will be applied on genes where the number of
    UTR exon (3' and 5' additioned) is over it.
  type: string
  inputBinding:
    prefix: --both
- id: plot
  doc: Allows to create an histogram in pdf of UTR sizes distribution.
  type: string
  inputBinding:
    prefix: --plot
- id: output
  doc: Output gff3 file where the gene incriminated will be write.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_manage_UTRs.pl
