class: CommandLineTool
id: fasta_ushuffle.cwl
inputs:
- id: o
  doc: Print original (unshuffled) in output file.
  type: boolean
  inputBinding:
    prefix: -o
- id: k
  doc: specifies the let size
  type: string
  inputBinding:
    prefix: -k
- id: s
  doc: specifies the seed for random number generator.
  type: string
  inputBinding:
    prefix: -s
- id: n
  doc: For each input sequence, print N permutations (default is 1). Use this only
    for debugging.
  type: string
  inputBinding:
    prefix: -n
- id: r
  doc: Retry N times to find a new shuffle (Default is 10). After N retries, a warning
    is printed, and a non-shuffled sequence will be written.
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_ushuffle
