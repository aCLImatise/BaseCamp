class: CommandLineTool
id: simple_sv_annotation.py.cwl
inputs:
- id: vcf
  doc: VCF file with snpEff annotations
  type: string
  inputBinding:
    position: 0
- id: gene_list
  doc: File with names of genes (one per line) for prioritisation
  type: string
  inputBinding:
    prefix: --gene_list
- id: known_fusion_pairs
  doc: File with known fusion gene pairs, one pair per line delimited by comma
  type: string
  inputBinding:
    prefix: --known_fusion_pairs
- id: known_fusion_promiscuous
  doc: File with known promiscuous fusion genes, one gene name per line
  type: string
  inputBinding:
    prefix: --known_fusion_promiscuous
- id: output
  doc: Output file name (must not exist). Does not support bgzipped output. Use "-"
    for stdout. [<invcf>.simpleann.vcf]
  type: string
  inputBinding:
    prefix: --output
- id: exon_nums
  doc: List of custom exon numbers. A transcript listed in this file will be annotated
    with the numbers found in this file, not the numbers found in the snpEff result
  type: string
  inputBinding:
    prefix: --exonNums
outputs: []
cwlVersion: v1.1
baseCommand:
- simple_sv_annotation.py
