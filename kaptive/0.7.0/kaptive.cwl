#!/usr/bin/env cwl-runner

baseCommand:
- kaptive.py
class: CommandLineTool
cwlVersion: v1.0
id: kaptive.py
inputs:
- doc: 'FASTA file(s) for assemblies (default: None)'
  id: assembly
  inputBinding:
    prefix: --assembly
  type:
    items: string
    type: array
- doc: 'GenBank file with reference loci (default: None)'
  id: k_refs
  inputBinding:
    prefix: --k_refs
  type: string
- doc: 'SRST2-formatted FASTA file of allelic typing genes to include in results (default:
    None)'
  id: allelic_typing
  inputBinding:
    prefix: --allelic_typing
  type: string
- doc: 'Output directory/prefix (default: ./kaptive_results)'
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: 'Display detailed information about each assembly in stdout (default: False)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'The number of threads to use for the BLAST searches (default: 4)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Suppress output files of sequences matching locus (default: False)'
  id: no_seq_out
  inputBinding:
    prefix: --no_seq_out
  type: boolean
- doc: 'Suppress output of tab-delimited table (default: False)'
  id: no_table
  inputBinding:
    prefix: --no_table
  type: boolean
- doc: 'Suppress output of JSON file (default: False)'
  id: no_json
  inputBinding:
    prefix: --no_json
  type: boolean
- doc: 'Missing bases at the ends of locus allowed in a perfect match. (default: 10)'
  id: start_end_margin
  inputBinding:
    prefix: --start_end_margin
  type: string
- doc: 'minimum required % coverage for genes (default: 90.0)'
  id: min_gene_cov
  inputBinding:
    prefix: --min_gene_cov
  type: long
- doc: 'minimum required % identity for genes (default: 80.0)'
  id: min_gene_id
  inputBinding:
    prefix: --min_gene_id
  type: long
- doc: 'genes with a % identity below this value will be flagged as low identity (default:
    95.0)'
  id: low_gene_id
  inputBinding:
    prefix: --low_gene_id
  type: string
- doc: 'minimum locus matching assembly piece to return (default: 100)'
  id: min_assembly_piece
  inputBinding:
    prefix: --min_assembly_piece
  type: long
- doc: 'when separate parts of the assembly are found within this distance, they will
    be merged (default: 100)'
  id: gap_fill_size
  inputBinding:
    prefix: --gap_fill_size
  type: string
- doc: 'In the Genbank file, the source feature must have a note identifying the locus
    name, starting with this label followed by a colon (e.g. /note="K locus: K1")
    (default: automatically determined)'
  id: locus_label
  inputBinding:
    prefix: --locus_label
  type: string
