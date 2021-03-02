class: CommandLineTool
id: ezclermont.cwl
inputs:
- id: in_min_length
  doc: 'minimum contig length to consider.default: 500'
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_experiment_name
  doc: "name of experiment; defaults to file name without\nextension. If reading from\
    \ stdin, uses the first\ncontig's ID"
  type: File?
  inputBinding:
    prefix: --experiment_name
- id: in_no_partial
  doc: "If scanning contigs, breaks between contigs could\npotentially contain your\
    \ sequence of interest. if\n--no_partial, these plausible partial matches will\
    \ NOT\nbe reported; default behaviour is to consider partial\nhits if the assembly\
    \ has more than 4 sequnces(ie, no\npartial matches for complete genomes, allowing\
    \ for 1\nchromasome and several plasmids)"
  type: boolean?
  inputBinding:
    prefix: --no_partial
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ezclermont
