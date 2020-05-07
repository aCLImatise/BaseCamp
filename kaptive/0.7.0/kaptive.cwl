class: CommandLineTool
id: kaptive.py.cwl
inputs:
- id: assembly
  doc: 'FASTA file(s) for assemblies (default: None)'
  type: string[]
  inputBinding:
    prefix: --assembly
- id: k_refs
  doc: 'GenBank file with reference loci (default: None)'
  type: string
  inputBinding:
    prefix: --k_refs
- id: allelic_typing
  doc: 'SRST2-formatted FASTA file of allelic typing genes to include in results (default:
    None)'
  type: string
  inputBinding:
    prefix: --allelic_typing
- id: out
  doc: 'Output directory/prefix (default: ./kaptive_results)'
  type: string
  inputBinding:
    prefix: --out
- id: verbose
  doc: 'Display detailed information about each assembly in stdout (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: 'The number of threads to use for the BLAST searches (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
- id: no_seq_out
  doc: 'Suppress output files of sequences matching locus (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_seq_out
- id: no_table
  doc: 'Suppress output of tab-delimited table (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_table
- id: no_json
  doc: 'Suppress output of JSON file (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_json
- id: start_end_margin
  doc: 'Missing bases at the ends of locus allowed in a perfect match. (default: 10)'
  type: string
  inputBinding:
    prefix: --start_end_margin
- id: min_gene_cov
  doc: 'minimum required % coverage for genes (default: 90.0)'
  type: long
  inputBinding:
    prefix: --min_gene_cov
- id: min_gene_id
  doc: 'minimum required % identity for genes (default: 80.0)'
  type: long
  inputBinding:
    prefix: --min_gene_id
- id: low_gene_id
  doc: 'genes with a % identity below this value will be flagged as low identity (default:
    95.0)'
  type: string
  inputBinding:
    prefix: --low_gene_id
- id: min_assembly_piece
  doc: 'minimum locus matching assembly piece to return (default: 100)'
  type: long
  inputBinding:
    prefix: --min_assembly_piece
- id: gap_fill_size
  doc: 'when separate parts of the assembly are found within this distance, they will
    be merged (default: 100)'
  type: string
  inputBinding:
    prefix: --gap_fill_size
- id: locus_label
  doc: 'In the Genbank file, the source feature must have a note identifying the locus
    name, starting with this label followed by a colon (e.g. /note="K locus: K1")
    (default: automatically determined)'
  type: string
  inputBinding:
    prefix: --locus_label
outputs: []
cwlVersion: v1.1
baseCommand:
- kaptive.py
