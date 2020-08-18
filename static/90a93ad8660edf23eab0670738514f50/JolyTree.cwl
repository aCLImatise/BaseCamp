class: CommandLineTool
id: ../../../JolyTree.sh.cwl
inputs:
- id: directory_name_containing
  doc: directory name containing  FASTA-formatted contig files;  only files ending
    with .fa, .fna, .fas or .fasta will be considered (mandatory)
  type: Directory
  inputBinding:
    prefix: -i
- id: basename_written_output
  doc: basename of every written output file (mandatory)
  type: string
  inputBinding:
    prefix: -b
- id: sketch_size_default
  doc: 'sketch size (default: 25% of the largest genome size)'
  type: long
  inputBinding:
    prefix: -s
- id: probability_observing_default
  doc: 'probability of observing a random k-mer (default: 0.0001)'
  type: string
  inputBinding:
    prefix: -q
- id: kmer_size_default
  doc: 'k-mer size (default: estimated from the average genome size with the probability
    set by option -q)'
  type: long
  inputBinding:
    prefix: -k
- id: at_least_one
  doc: 'if at least one of the estimated p-distances is above this specified cutoff,
    then a F81 correction is performed (default: 0.1)'
  type: string
  inputBinding:
    prefix: -c
- id: bme_tree_inference
  doc: no BME tree inference (only pairwise distance estimation)
  type: boolean
  inputBinding:
    prefix: -n
- id: number_when_performing
  doc: 'number of steps  when performing the  ratchet-based  BME tree search (default:
    100)'
  type: long
  inputBinding:
    prefix: -r
- id: number_threads_default
  doc: 'number of threads (default: 2)'
  type: long
  inputBinding:
    prefix: -t
- id: joly_tree_dots_h
  doc: '[options]'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- JolyTree.sh
