class: CommandLineTool
id: capCpileup2binned.cwl
inputs:
- id: i
  doc: pileupfile  is the input pile-up file name
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: outfile     is the file name for the output bedGraph
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: chromsizes  is the file name for the list of chromosome sizes
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: target      is the name of the target
  type: boolean
  inputBinding:
    prefix: -t
- id: b
  doc: bin wind    pile-up will be up into sliding window bins with step size of 'bin'
    and window width of 'wind'
  type: boolean
  inputBinding:
    prefix: -b
- id: n
  doc: totalreads  pile-up will be normalized to reads per million genome wide; requires
    total number of reads (available from capC main process report file; includes
    both inter and intra chromosomal).
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- capCpileup2binned
