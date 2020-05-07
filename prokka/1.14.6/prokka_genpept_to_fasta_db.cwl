class: CommandLineTool
id: prokka_genpept_to_fasta_db.cwl
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
- id: min_len
  doc: Minimum peptide length (default '0').
  type: string
  inputBinding:
    prefix: --minlen
outputs: []
cwlVersion: v1.1
baseCommand:
- prokka-genpept_to_fasta_db
