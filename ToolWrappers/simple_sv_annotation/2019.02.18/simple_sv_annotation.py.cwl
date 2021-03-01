class: CommandLineTool
id: simple_sv_annotation.py.cwl
inputs:
- id: in_gene_list
  doc: "File with names of genes (one per line) for\nprioritisation"
  type: File?
  inputBinding:
    prefix: --gene_list
- id: in_known_fusion_pairs
  doc: "File with known fusion gene pairs, one pair per line\ndelimited by comma"
  type: File?
  inputBinding:
    prefix: --known_fusion_pairs
- id: in_known_fusion_promiscuous
  doc: "File with known promiscuous fusion genes, one gene\nname per line"
  type: File?
  inputBinding:
    prefix: --known_fusion_promiscuous
- id: in_output
  doc: "Output file name (must not exist). Does not support\nbgzipped output. Use\
    \ \"-\" for stdout.\n[<invcf>.simpleann.vcf]"
  type: File?
  inputBinding:
    prefix: --output
- id: in_exon_nums
  doc: "List of custom exon numbers. A transcript listed in\nthis file will be annotated\
    \ with the numbers found in\nthis file, not the numbers found in the snpEff result\n"
  type: File?
  inputBinding:
    prefix: --exonNums
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name (must not exist). Does not support\nbgzipped output. Use\
    \ \"-\" for stdout.\n[<invcf>.simpleann.vcf]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- simple_sv_annotation.py
