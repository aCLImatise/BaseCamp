class: CommandLineTool
id: flanker.cwl
inputs:
- id: in_gene
  doc: "Gene(s) of interest (escape any special characters).\nUse space seperation\
    \ for multipe genes (default: None)"
  type: string[]
  inputBinding:
    prefix: --gene
- id: in_list_of_genes
  doc: "Line separated file containing genes of interest\n(default: False)"
  type: File?
  inputBinding:
    prefix: --list_of_genes
- id: in_closest_match
  doc: 'Find closest match to query (default: False)'
  type: boolean?
  inputBinding:
    prefix: --closest_match
- id: in_flank
  doc: "Choose which side(s) of the gene to extract\n(upstream/downstream/both) (default:\
    \ both)"
  type: string?
  inputBinding:
    prefix: --flank
- id: in_mode
  doc: "One of \"default\" - normal mode, \"mm\" - multi-allelic\ncluster, or \"sm\"\
    \ - salami-mode (default: default)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_circ
  doc: 'Is sequence circularised (default: False)'
  type: boolean?
  inputBinding:
    prefix: --circ
- id: in_include_gene
  doc: 'Include the gene of interest (default: False)'
  type: boolean?
  inputBinding:
    prefix: --include_gene
- id: in_database
  doc: "Choose Abricate database e.g. NCBI, resfinder\n(default: ncbi)"
  type: string?
  inputBinding:
    prefix: --database
- id: in_increase_verbosity_warnings
  doc: "[VERBOSE], --verbose [VERBOSE]\nIncrease verbosity: 0 = only warnings, 1 =\
    \ info, 2 =\ndebug. No number means info. Default is no verbosity.\n(default:\
    \ 0)"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_fast_a_file
  doc: 'Input fasta file (default: None)'
  type: File?
  inputBinding:
    prefix: --fasta_file
- id: in_window
  doc: "Length of flanking sequence/first window length\n(default: 1000)"
  type: long?
  inputBinding:
    prefix: --window
- id: in_window_stop
  doc: 'Final window length (default: None)'
  type: long?
  inputBinding:
    prefix: --window_stop
- id: in_window_step
  doc: 'Step in window sequence (default: None)'
  type: string?
  inputBinding:
    prefix: --window_step
- id: in_cluster
  doc: 'Turn on clustering mode? (default: False)'
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_outfile
  doc: 'Prefix for the clustering file (default: out)'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_threshold
  doc: "mash distance threshold for clustering (default:\n0.001)"
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_threads
  doc: 'threads for mash to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_km_er_length
  doc: 'kmer length for Mash (default: 21)'
  type: long?
  inputBinding:
    prefix: --kmer_length
- id: in_sketch_size
  doc: "sketch size for mash (default: 1000)\n"
  type: long?
  inputBinding:
    prefix: --sketch_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: 'Prefix for the clustering file (default: out)'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flanker:0.1.5--py_0
cwlVersion: v1.1
baseCommand:
- flanker
