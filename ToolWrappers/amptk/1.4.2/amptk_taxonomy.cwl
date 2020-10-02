class: CommandLineTool
id: amptk_taxonomy.cwl
inputs:
- id: in_fast_a
  doc: Input FASTA file (i.e. OTUs from amptk cluster) (Required)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_otu_table
  doc: Input OTU table file (i.e. otu_table from amptk cluster)
  type: boolean
  inputBinding:
    prefix: --otu_table
- id: in_out
  doc: 'Base name for output file. Default: amptk-taxonomy.<method>.txt'
  type: File
  inputBinding:
    prefix: --out
- id: in_db
  doc: 'Select Pre-installed database [ITS1, ITS2, ITS, 16S, LSU, COI]. Default: ITS2'
  type: boolean
  inputBinding:
    prefix: --db
- id: in_mapping_file
  doc: QIIME-like mapping file
  type: boolean
  inputBinding:
    prefix: --mapping_file
- id: in_taxonomy
  doc: Taxonomy calculated elsewhere. 2 Column file.
  type: boolean
  inputBinding:
    prefix: --taxonomy
- id: in_method
  doc: 'Taxonomy method. Default: hybrid [utax, sintax, usearch, hybrid, rdp, blast]'
  type: boolean
  inputBinding:
    prefix: --method
- id: in_add_two_db
  doc: Add FASTA files to DB on the fly.
  type: boolean
  inputBinding:
    prefix: --add2db
- id: in_fast_a_db
  doc: Alternative database of fasta sequenes to use for global alignment.
  type: boolean
  inputBinding:
    prefix: --fasta_db
- id: in_u_tax_db
  doc: "UTAX formatted database. Default: ITS2.udb [See configured DB's below]"
  type: boolean
  inputBinding:
    prefix: --utax_db
- id: in_u_tax_cut_off
  doc: 'UTAX confidence value threshold. Default: 0.8 [0 to 0.9]'
  type: boolean
  inputBinding:
    prefix: --utax_cutoff
- id: in_u_search_db
  doc: 'USEARCH formatted database. Default: USEARCH.udb'
  type: boolean
  inputBinding:
    prefix: --usearch_db
- id: in_u_search_cut_off
  doc: USEARCH threshold percent identity. Default 0.7
  type: boolean
  inputBinding:
    prefix: --usearch_cutoff
- id: in_sin_tax_cut_off
  doc: 'SINTAX confidence value threshold. Default: 0.8 [0 to 0.9]'
  type: boolean
  inputBinding:
    prefix: --sintax_cutoff
- id: in_rdp
  doc: Path to RDP Classifier. Required if --method rdp
  type: boolean
  inputBinding:
    prefix: --rdp
- id: in_rdp_db
  doc: RDP Classifer DB set. [fungalits_unite, fungalits_warcup. fungallsu, 16srrna]
  type: boolean
  inputBinding:
    prefix: --rdp_db
- id: in_rdp_cut_off
  doc: 'RDP Classifer confidence value threshold. Default: 0.8 [0 to 1.0]'
  type: boolean
  inputBinding:
    prefix: --rdp_cutoff
- id: in_local_blast
  doc: 'Local Blast database (full path) Default: NCBI remote nt database'
  type: boolean
  inputBinding:
    prefix: --local_blast
- id: in_tax_filter
  doc: Remove OTUs from OTU table that do not match filter, i.e. Fungi to keep only
    fungi.
  type: boolean
  inputBinding:
    prefix: --tax_filter
- id: in_u_search
  doc: 'USEARCH executable. Default: usearch9'
  type: boolean
  inputBinding:
    prefix: --usearch
- id: in_cpus
  doc: 'Number of CPUs to use. Default: all'
  type: boolean
  inputBinding:
    prefix: --cpus
- id: in_debug
  doc: Keep intermediate files
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Base name for output file. Default: amptk-taxonomy.<method>.txt'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- amptk
- taxonomy
