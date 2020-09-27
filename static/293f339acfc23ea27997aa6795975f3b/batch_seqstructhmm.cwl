class: CommandLineTool
id: batch_seqstructhmm.cwl
inputs:
- id: in_cores
  doc: "number of cores to use (if not given, all cores are\nused)"
  type: long
  inputBinding:
    prefix: --cores
- id: in_structure_type
  doc: "structure type to use; must match location of\nstructure files (see data_directory\
    \ argument above)\n(default: shapes)"
  type: string
  inputBinding:
    prefix: --structure_type
- id: in_motif_length
  doc: 'length of the motifs that shall be found (default: 6)'
  type: long
  inputBinding:
    prefix: --motif_length
- id: in_baum_welch
  doc: "should the models be initialized with a Baum-Welch\noptimized sequence motif\
    \ (default: yes)"
  type: boolean
  inputBinding:
    prefix: --baum_welch
- id: in_flexibility
  doc: "greedyness of Gibbs sampler: model parameters are\nsampled from among the\
    \ top f configurations (default:\nf=10), set f to 0 in order to include all possible\n\
    configurations"
  type: long
  inputBinding:
    prefix: --flexibility
- id: in_block_size
  doc: "number of sequences to be held-out in each iteration\n(default: 1)"
  type: long
  inputBinding:
    prefix: --block_size
- id: in_threshold
  doc: "the iterative algorithm is terminated if this\nreduction in sequence structure\
    \ loglikelihood is not\nreached for any of the 3 last measurements (default:\n\
    10)"
  type: long
  inputBinding:
    prefix: --threshold
- id: in_termination_interval
  doc: "produce output every <i> iterations (default: i=100)\n"
  type: long
  inputBinding:
    prefix: --termination_interval
- id: in_data_directory
  doc: "data directory; must contain the sequence files under\nfasta/<protein>/positive.fasta\
    \ and structure files\nunder <structure_type>/<protein>/positive.txt"
  type: string
  inputBinding:
    position: 0
- id: in_proteins
  doc: "list of RNA-binding proteins to analyze (surrounded by\nquotation marks, separated\
    \ by whitespace)"
  type: string
  inputBinding:
    position: 1
- id: in_batch_directory
  doc: directory for batch output
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- batch_seqstructhmm
