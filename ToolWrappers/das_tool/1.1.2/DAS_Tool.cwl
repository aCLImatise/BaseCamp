class: CommandLineTool
id: DAS_Tool.cwl
inputs:
- id: in_methodn_c_contigsfa
  doc: ',...,methodN -c contigs.fa -o myOutput'
  type: string?
  inputBinding:
    prefix: -l
- id: in_bins
  doc: Comma separated list of tab separated scaffolds to bin tables.
  type: boolean?
  inputBinding:
    prefix: --bins
- id: in_contigs
  doc: Contigs in fasta format.
  type: boolean?
  inputBinding:
    prefix: --contigs
- id: in_output_basename
  doc: Basename of output files.
  type: boolean?
  inputBinding:
    prefix: --outputbasename
- id: in_labels
  doc: Comma separated list of binning prediction names. (optional)
  type: boolean?
  inputBinding:
    prefix: --labels
- id: in_search_engine
  doc: "Engine used for single copy gene identification [blast/diamond/usearch].\n\
    (default: usearch)"
  type: boolean?
  inputBinding:
    prefix: --search_engine
- id: in_write_bin_evals
  doc: 'Write evaluation for each input bin set [0/1]. (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --write_bin_evals
- id: in_create_plots
  doc: 'Create binning performance plots [0/1]. (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --create_plots
- id: in_write_bins
  doc: 'Export bins as fasta files  [0/1]. (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --write_bins
- id: in_write_unbinned
  doc: 'Report unbinned contigs. To export as fasta file also set write_bins==1 [0/1].
    (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --write_unbinned
- id: in_proteins
  doc: "Predicted proteins in prodigal fasta format (>scaffoldID_geneNo).\nGene prediction\
    \ step will be skipped if given. (optional)"
  type: boolean?
  inputBinding:
    prefix: --proteins
- id: in_threads
  doc: 'Number of threads to use. (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_score_threshold
  doc: "Score threshold until selection algorithm will keep selecting bins [0..1].\n\
    (default: 0.5)"
  type: boolean?
  inputBinding:
    prefix: --score_threshold
- id: in_duplicate_penalty
  doc: "Penalty for duplicate single copy genes per bin (weight b).\nOnly change if\
    \ you know what you're doing. [0..3]\n(default: 0.6)"
  type: boolean?
  inputBinding:
    prefix: --duplicate_penalty
- id: in_mega_bin_penalty
  doc: "Penalty for megabins (weight c). Only change if you know what you're doing.\
    \ [0..3]\n(default: 0.5)"
  type: boolean?
  inputBinding:
    prefix: --megabin_penalty
- id: in_db_directory
  doc: 'Directory of single copy gene database. (default: install_dir/db)'
  type: boolean?
  inputBinding:
    prefix: --db_directory
- id: in_resume
  doc: 'Use existing predicted single copy gene files from a previous run [0/1]. (default:
    0)'
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_debug
  doc: Write debug information to log file.
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DAS_Tool
