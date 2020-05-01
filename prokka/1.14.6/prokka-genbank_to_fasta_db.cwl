#!/usr/bin/env cwl-runner

baseCommand:
- prokka-genbank_to_fasta_db
class: CommandLineTool
cwlVersion: v1.0
id: prokka-genbank_to_fasta_db
inputs:
- doc: "!      Verbose progress (default '0')."
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Input format (default 'genbank').
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: "What tag to use as Fasta ID (default = try first of: protein_id locus_tag\
    \ db_xref) (default '')."
  id: id_tag
  inputBinding:
    prefix: --idtag
  type: string
- doc: Separator between EC/gene/product (default '~~~').
  id: sep
  inputBinding:
    prefix: --sep
  type: string
- doc: Replace empty EC/gene/product with this (default '').
  id: blank
  inputBinding:
    prefix: --blank
  type: string
- doc: "!       Include /pseudo genes (default '0')."
  id: pseudo
  inputBinding:
    prefix: --pseudo
  type: boolean
- doc: "!         Include 'hypothetical protein' genes (default '0')."
  id: hypo
  inputBinding:
    prefix: --hypo
  type: boolean
- doc: Force this genetic code for translation (otherwise /transl_table) (default
    '0').
  id: g_code
  inputBinding:
    prefix: --gcode
  type: string
- doc: Minimum peptide length (default '0').
  id: min_len
  inputBinding:
    prefix: --minlen
  type: string
