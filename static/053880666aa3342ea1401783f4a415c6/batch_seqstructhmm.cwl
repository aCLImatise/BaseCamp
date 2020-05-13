class: CommandLineTool
id: batch_seqstructhmm.cwl
inputs:
- id: data_directory
  doc: data directory; must contain the sequence files under fasta/<protein>/positive.fasta
    and structure files under <structure_type>/<protein>/positive.txt
  type: string
  inputBinding:
    position: 0
- id: proteins
  doc: list of RNA-binding proteins to analyze (surrounded by quotation marks, separated
    by whitespace)
  type: string
  inputBinding:
    position: 1
- id: batch_directory
  doc: directory for batch output
  type: string
  inputBinding:
    position: 2
- id: cores
  doc: number of cores to use (if not given, all cores are used)
  type: string
  inputBinding:
    prefix: --cores
- id: structure_type
  doc: 'structure type to use; must match location of structure files (see data_directory
    argument above) (default: shapes)'
  type: string
  inputBinding:
    prefix: --structure_type
- id: motif_length
  doc: 'length of the motifs that shall be found (default: 6)'
  type: string
  inputBinding:
    prefix: --motif_length
- id: baum_welch
  doc: 'should the models be initialized with a Baum-Welch optimized sequence motif
    (default: yes)'
  type: boolean
  inputBinding:
    prefix: --baum_welch
- id: flexibility
  doc: 'greedyness of Gibbs sampler: model parameters are sampled from among the top
    f configurations (default: f=10), set f to 0 in order to include all possible
    configurations'
  type: string
  inputBinding:
    prefix: --flexibility
- id: block_size
  doc: 'number of sequences to be held-out in each iteration (default: 1)'
  type: string
  inputBinding:
    prefix: --block_size
- id: threshold
  doc: 'the iterative algorithm is terminated if this reduction in sequence structure
    loglikelihood is not reached for any of the 3 last measurements (default: 10)'
  type: string
  inputBinding:
    prefix: --threshold
- id: termination_interval
  doc: 'produce output every <i> iterations (default: i=100)'
  type: string
  inputBinding:
    prefix: --termination_interval
outputs: []
cwlVersion: v1.1
baseCommand:
- batch_seqstructhmm
