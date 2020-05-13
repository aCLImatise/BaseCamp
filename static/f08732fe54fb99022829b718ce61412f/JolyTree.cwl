class: CommandLineTool
id: JolyTree.sh.cwl
inputs:
- id: i
  doc: directory name containing  FASTA-formatted contig files;  only files ending
    with .fa, .fna, .fas or .fasta will be considered (mandatory)
  type: Directory
  inputBinding:
    prefix: -i
- id: b
  doc: basename of every written output file (mandatory)
  type: string
  inputBinding:
    prefix: -b
- id: s
  doc: 'sketch size (default: 25% of the largest genome size)'
  type: long
  inputBinding:
    prefix: -s
- id: q
  doc: 'probability of observing a random k-mer (default: 0.0001)'
  type: string
  inputBinding:
    prefix: -q
- id: k
  doc: 'k-mer size (default: estimated from the average genome size with the probability
    set by option -q)'
  type: long
  inputBinding:
    prefix: -k
- id: c
  doc: 'if at least one of the estimated p-distances is above this specified cutoff,
    then a F81 correction is performed (default: 0.1)'
  type: string
  inputBinding:
    prefix: -c
- id: n
  doc: no BME tree inference (only pairwise distance estimation)
  type: boolean
  inputBinding:
    prefix: -n
- id: r
  doc: 'number of steps  when performing the  ratchet-based  BME tree search (default:
    100)'
  type: long
  inputBinding:
    prefix: -r
- id: t
  doc: 'number of threads (default: 2)'
  type: long
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- JolyTree.sh
