class: CommandLineTool
id: magpurify_phylo_markers.cwl
inputs:
- id: fna
  doc: Path to input genome in FASTA format
  type: string
  inputBinding:
    position: 0
- id: out
  doc: Output directory to store results and intermediate files
  type: string
  inputBinding:
    position: 1
- id: db
  doc: 'Path to reference database. By default, the MAGPURIFYDB environmental variable
    is used (default: None)'
  type: string
  inputBinding:
    prefix: --db
- id: continue
  doc: 'Go straight to quality estimation and skip all previous steps (default: False)'
  type: boolean
  inputBinding:
    prefix: --continue
- id: max_target_seqs
  doc: 'Maximum number of targets reported in BLAST table (default: 1)'
  type: long
  inputBinding:
    prefix: --max_target_seqs
- id: cut_off_type
  doc: 'Use strict or sensitive %ID cutoff for taxonomically annotating genes (default:
    strict)'
  type: string
  inputBinding:
    prefix: --cutoff_type
- id: seq_type
  doc: 'Choose to search genes versus DNA or protein database (default: protein)'
  type: string
  inputBinding:
    prefix: --seq_type
- id: hit_type
  doc: 'Transfer taxonomy of all hits or top hit per gene (default: top_hit)'
  type: string
  inputBinding:
    prefix: --hit_type
- id: exclude_clades
  doc: 'List of clades to exclude (ex: s__1300164.4) (default: None)'
  type: string[]
  inputBinding:
    prefix: --exclude_clades
- id: bin_fract
  doc: 'Min fraction of genes in bin that agree with consensus taxonomy for bin annotation
    (default: 0.7)'
  type: string
  inputBinding:
    prefix: --bin_fract
- id: contig_fract
  doc: 'Min fraction of genes in that disagree with bin taxonomy for filtering (default:
    1.0)'
  type: string
  inputBinding:
    prefix: --contig_fract
- id: allow_no_class
  doc: 'Allow a bin to be unclassfied and flag any classified contigs (default: False)'
  type: boolean
  inputBinding:
    prefix: --allow_noclass
- id: threads
  doc: 'Number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- phylo-markers
