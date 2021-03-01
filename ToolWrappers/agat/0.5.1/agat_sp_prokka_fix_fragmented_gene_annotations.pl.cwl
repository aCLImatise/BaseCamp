class: CommandLineTool
id: agat_sp_prokka_fix_fragmented_gene_annotations.pl.cwl
inputs:
- id: in_gff
  doc: Input genome GTF/GFF file. Mandatory.
  type: boolean?
  inputBinding:
    prefix: --gff
- id: in_fast_a
  doc: Input genome fasta file. Mandatory.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_db
  doc: Input Uniprot fasta file used by prokka. Mandatory.
  type: boolean?
  inputBinding:
    prefix: --db
- id: in_frags
  doc: and fix detected FRAGS if not in the same frame
  type: string?
  inputBinding:
    prefix: --frags
- id: in_pseudo
  doc: "Merge detected FRAGS and add the agat_pseudo attribute (value\nwill be the\
    \ location of the first stop codon met)."
  type: boolean?
  inputBinding:
    prefix: --pseudo
- id: in_hamap_size
  doc: "Some protein function are not infered by Uniprot but by Hamap.\nIn such case\
    \ the information is retrieved from the web. As hamap\nprovide a family profile,\
    \ the protein size if a range. \"low\"\noption will use the low value of the range,\
    \ \"middle\" option will\nuse the average of the range, \"high\" option will the\
    \ the high\nvalue of the range. Default \"high\"."
  type: boolean?
  inputBinding:
    prefix: --hamap_size
- id: in_codon
  doc: Codon table to use. [default 1]
  type: long?
  inputBinding:
    prefix: --codon
- id: in_skip_hamap
  doc: "For test purpose it could be useful to skip hamap, because it\nrequires fetching\
    \ information through internet."
  type: boolean?
  inputBinding:
    prefix: --skip_hamap
- id: in_output
  doc: Output folder. Mandatory.
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_verbose_mode_default
  doc: verbose mode. Default off.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_agat_sp_pro_kk_a_fragmented_gene_annotations_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output folder. Mandatory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.5.1--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_prokka_fix_fragmented_gene_annotations.pl
