class: CommandLineTool
id: suppa.py_generateEvents.cwl
inputs:
- id: in_input_file
  doc: specify input file
  type: File
  inputBinding:
    prefix: --input-file
- id: in_output_file
  doc: specify output path and name without extension
  type: File
  inputBinding:
    prefix: --output-file
- id: in_list_analyze_space
  doc: "[{SE,SS,MX,RI,FL} ...], --event-type {SE,SS,MX,RI,FL} [{SE,SS,MX,RI,FL} ...]\n\
    list of events to analyze. (space separated) Options:\nSE -- Skipping Exon SS\
    \ -- Alternative Splice Site\n(5'/3') MX -- Mutually Exclusive Exon RI -- Retained\n\
    Intron FL -- Alternative First/Last Exon"
  type: string
  inputBinding:
    prefix: -e
- id: in_boundary
  doc: "Boundary type.Options: S -- Strict (Default) V --\nVariable"
  type: string
  inputBinding:
    prefix: --boundary
- id: in_threshold
  doc: "Variability treshold. In case of strict boundaries\nthis argument is ignored(Default:\
    \ 10nt)."
  type: long
  inputBinding:
    prefix: --threshold
- id: in_pool_genes
  doc: pool together overlapping genes.
  type: boolean
  inputBinding:
    prefix: --pool-genes
- id: in_exon_length
  doc: "length of the exons for its visualization. (Default:\n100nt)"
  type: long
  inputBinding:
    prefix: --exon-length
- id: in_mode
  doc: to choose from DEBUG, INFO, WARNING, ERROR and
  type: string
  inputBinding:
    prefix: --mode
- id: in_critical
  doc: -f {ioe,ioi}, --format {ioe,ioi}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: specify output path and name without extension
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- suppa.py
- generateEvents
