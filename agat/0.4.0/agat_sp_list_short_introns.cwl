class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_list_short_introns.pl.cwl
inputs:
- id: ref_file
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: -reffile
- id: size
  doc: Minimum intron size accepted in nucleotide. All introns under this size will
    be reported. Default value = 10.
  type: string
  inputBinding:
    prefix: --size
- id: output
  doc: Output gff3 file where the gene incriminated will be write.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_list_short_introns.pl
