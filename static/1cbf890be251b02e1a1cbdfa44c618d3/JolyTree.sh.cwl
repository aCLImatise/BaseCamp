class: CommandLineTool
id: JolyTree.sh.cwl
inputs:
- id: in_directory_name_containing
  doc: "directory name containing  FASTA-formatted contig files;  only files\nending\
    \ with .fa, .fna, .fas or .fasta will be considered (mandatory)"
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_basename_written_output
  doc: basename of every written output file (mandatory)
  type: File?
  inputBinding:
    prefix: -b
- id: in_sketch_size_default
  doc: 'sketch size (default: 25% of the largest genome size)'
  type: long?
  inputBinding:
    prefix: -s
- id: in_probability_observing_default
  doc: 'probability of observing a random k-mer (default: 0.0001)'
  type: double?
  inputBinding:
    prefix: -q
- id: in_kmer_size_default
  doc: "k-mer size (default: estimated from the average genome size with the\nprobability\
    \ set by option -q)"
  type: long?
  inputBinding:
    prefix: -k
- id: in_least_one_estimated
  doc: "if at least one of the estimated p-distances is above this specified\ncutoff,\
    \ then a F81 correction is performed (default: 0.1)"
  type: double?
  inputBinding:
    prefix: -c
- id: in_bme_tree_inference
  doc: no BME tree inference (only pairwise distance estimation)
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_number_when_performing
  doc: "number of steps  when performing the  ratchet-based  BME tree search\n(default:\
    \ 100)"
  type: long?
  inputBinding:
    prefix: -r
- id: in_number_threads_default
  doc: 'number of threads (default: 2)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_joly_tree_dots_h
  doc: '[options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_basename_written_output
  doc: basename of every written output file (mandatory)
  type: File?
  outputBinding:
    glob: $(inputs.in_basename_written_output)
hints: []
cwlVersion: v1.1
baseCommand:
- JolyTree.sh
