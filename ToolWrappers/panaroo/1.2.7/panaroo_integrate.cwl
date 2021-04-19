class: CommandLineTool
id: panaroo_integrate.cwl
inputs:
- id: in_min_edge_support_sv
  doc: "minimum edge support required to call structural\nvariants in the presence/absence\
    \ csv file\n(default=max(2, 0.01*n_samples))"
  type: long?
  inputBinding:
    prefix: --min_edge_support_sv
- id: in_threads
  doc: number of threads to use (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_quiet
  doc: suppress additional output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_dirty
  doc: "keep temporary directory containing cluster files and\ncdhit output"
  type: Directory?
  inputBinding:
    prefix: --dirty
- id: in_input_dir
  doc: input directory for gml of pre-existing panaroo output
  type: Directory?
  inputBinding:
    prefix: --input_dir
- id: in_input_gff
  doc: input gff file of new genome to be integrated
  type: File?
  inputBinding:
    prefix: --input_gff
- id: in_out_dir
  doc: location of a new output directory
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_remove_invalid_genes
  doc: "removes annotations that do not conform to the\nexpected Prokka format such\
    \ as those including\npremature stop codons."
  type: boolean?
  inputBinding:
    prefix: --remove-invalid-genes
- id: in_threshold
  doc: sequence identity threshold (default=0.95)
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_family_threshold
  doc: "protein family sequence identity threshold\n(default=0.7)"
  type: double?
  inputBinding:
    prefix: --family_threshold
- id: in_len_dif_percent
  doc: length difference cutoff (default=0.95)
  type: long?
  inputBinding:
    prefix: --len_dif_percent
- id: in_merge_paralogs
  doc: don't split paralogs
  type: boolean?
  inputBinding:
    prefix: --merge_paralogs
- id: in_length_outlier_support_proportion
  doc: "proportion of genomes supporting a gene with a length\nmore than 1.5x outside\
    \ the interquatile range for\ngenes in the same cluster (default=0.01). Genes\n\
    failing this test will be re-annotated at the shorter\nlength"
  type: long?
  inputBinding:
    prefix: --length_outlier_support_proportion
- id: in_alignment
  doc: "Output alignments of core genes or all genes. Options\nare 'core' and 'pan'.\
    \ Default: 'None'"
  type: string?
  inputBinding:
    prefix: --alignment
- id: in_aligner
  doc: "Specify an aligner. Options:'prank', 'clustal', and\ndefault: 'mafft'"
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_core_threshold
  doc: Core-genome sample threshold (default=0.95)
  type: double?
  inputBinding:
    prefix: --core_threshold
- id: in_all_seq_in_graph
  doc: "Retains all DNA sequence for each gene cluster in the\ngraph output. Off by\
    \ default as it uses a large amount\nof space.\n"
  type: boolean?
  inputBinding:
    prefix: --all_seq_in_graph
- id: in_pana_roo_integrate
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dirty
  doc: "keep temporary directory containing cluster files and\ncdhit output"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_dirty)
- id: out_out_dir
  doc: location of a new output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panaroo:1.2.7--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- panaroo-integrate
