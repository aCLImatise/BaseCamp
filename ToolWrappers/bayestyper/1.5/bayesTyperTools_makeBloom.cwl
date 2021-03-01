class: CommandLineTool
id: bayesTyperTools_makeBloom.cwl
inputs:
- id: in_arg_kmc_kmer
  doc: '[ --kmc-table-prefix ] arg       KMC kmer table prefix. Output is written
    as <kmc-table-prefix>.bloomMeta and <kmc-table-prefix>.bloomData.'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_arg_number_threads
  doc: '[ --num-threads ] arg (=1)       number of threads used (+= 1 I/O thread).'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_false_positive_rate
  doc: (=0.001)  bloom filter false positive rate.
  type: double?
  inputBinding:
    prefix: --false-positive-rate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bayesTyperTools
- makeBloom
