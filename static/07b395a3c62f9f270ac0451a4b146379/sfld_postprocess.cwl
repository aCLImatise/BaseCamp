class: CommandLineTool
id: sfld_postprocess.cwl
inputs:
- id: no_search
  doc: "| -S         don't run search if output files exist"
  type: boolean
  inputBinding:
    prefix: --nosearch
- id: hmmer_path
  doc: '| -p PATH    path to hmm* binaries (overrides $HMMER_PATH)'
  type: boolean
  inputBinding:
    prefix: --hmmerpath
- id: alignments
  doc: '| -a         HMMER alignment file'
  type: boolean
  inputBinding:
    prefix: --alignments
- id: dom
  doc: '| -d         HMMER domtblout file'
  type: boolean
  inputBinding:
    prefix: --dom
- id: hmmer_out
  doc: '| -O         HMMER output file'
  type: boolean
  inputBinding:
    prefix: --hmmer-out
- id: site_info
  doc: '| -s         SFLD reside annotation file'
  type: boolean
  inputBinding:
    prefix: --site-info
- id: format
  doc: '| -f FORMAT  output text format [not implemented]'
  type: boolean
  inputBinding:
    prefix: --format
- id: output
  doc: '| -o FILE    output file (otherwise STDOUT)'
  type: boolean
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- sfld_postprocess
