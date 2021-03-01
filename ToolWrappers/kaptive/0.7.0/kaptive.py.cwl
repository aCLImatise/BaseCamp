class: CommandLineTool
id: kaptive.py.cwl
inputs:
- id: in_assembly
  doc: 'FASTA file(s) for assemblies (default: None)'
  type: string[]
  inputBinding:
    prefix: --assembly
- id: in_k_refs
  doc: 'GenBank file with reference loci (default: None)'
  type: File?
  inputBinding:
    prefix: --k_refs
- id: in_allelic_typing
  doc: "SRST2-formatted FASTA file of allelic typing genes to\ninclude in results\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --allelic_typing
- id: in_out
  doc: 'Output directory/prefix (default: ./kaptive_results)'
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_verbose
  doc: "Display detailed information about each assembly in\nstdout (default: False)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: "The number of threads to use for the BLAST searches\n(default: 4)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_no_seq_out
  doc: "Suppress output files of sequences matching locus\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --no_seq_out
- id: in_no_table
  doc: "Suppress output of tab-delimited table (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --no_table
- id: in_no_json
  doc: 'Suppress output of JSON file (default: False)'
  type: File?
  inputBinding:
    prefix: --no_json
- id: in_start_end_margin
  doc: "Missing bases at the ends of locus allowed in a\nperfect match. (default:\
    \ 10)"
  type: long?
  inputBinding:
    prefix: --start_end_margin
- id: in_min_gene_cov
  doc: 'minimum required % coverage for genes (default: 90.0)'
  type: long?
  inputBinding:
    prefix: --min_gene_cov
- id: in_min_gene_id
  doc: 'minimum required % identity for genes (default: 80.0)'
  type: long?
  inputBinding:
    prefix: --min_gene_id
- id: in_low_gene_id
  doc: "genes with a % identity below this value will be\nflagged as low identity\
    \ (default: 95.0)"
  type: double?
  inputBinding:
    prefix: --low_gene_id
- id: in_min_assembly_piece
  doc: "minimum locus matching assembly piece to return\n(default: 100)"
  type: long?
  inputBinding:
    prefix: --min_assembly_piece
- id: in_gap_fill_size
  doc: "when separate parts of the assembly are found within\nthis distance, they\
    \ will be merged (default: 100)"
  type: long?
  inputBinding:
    prefix: --gap_fill_size
- id: in_locus_label
  doc: "In the Genbank file, the source feature must have a\nnote identifying the\
    \ locus name, starting with this\nlabel followed by a colon (e.g. /note=\"K locus:\
    \ K1\")\n(default: automatically determined)\n"
  type: File?
  inputBinding:
    prefix: --locus_label
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Output directory/prefix (default: ./kaptive_results)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_no_json
  doc: 'Suppress output of JSON file (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_no_json)
hints: []
cwlVersion: v1.1
baseCommand:
- kaptive.py
