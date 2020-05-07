class: CommandLineTool
id: prokka_genbank_to_fasta_db.cwl
inputs:
- id: verbose
  doc: "!      Verbose progress (default '0')."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: format
  doc: Input format (default 'genbank').
  type: string
  inputBinding:
    prefix: --format
- id: id_tag
  doc: "What tag to use as Fasta ID (default = try first of: protein_id locus_tag\
    \ db_xref) (default '')."
  type: string
  inputBinding:
    prefix: --idtag
- id: sep
  doc: Separator between EC/gene/product (default '~~~').
  type: string
  inputBinding:
    prefix: --sep
- id: blank
  doc: Replace empty EC/gene/product with this (default '').
  type: string
  inputBinding:
    prefix: --blank
- id: pseudo
  doc: "!       Include /pseudo genes (default '0')."
  type: boolean
  inputBinding:
    prefix: --pseudo
- id: hypo
  doc: "!         Include 'hypothetical protein' genes (default '0')."
  type: boolean
  inputBinding:
    prefix: --hypo
- id: g_code
  doc: Force this genetic code for translation (otherwise /transl_table) (default
    '0').
  type: string
  inputBinding:
    prefix: --gcode
- id: min_len
  doc: Minimum peptide length (default '0').
  type: string
  inputBinding:
    prefix: --minlen
outputs: []
cwlVersion: v1.1
baseCommand:
- prokka-genbank_to_fasta_db
