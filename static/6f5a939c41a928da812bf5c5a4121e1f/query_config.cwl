class: CommandLineTool
id: query_config.cwl
inputs:
- id: in_machines
  doc: ; if you specify more than one of these arguments,
  type: string
  inputBinding:
    prefix: --machines
- id: in_debug
  doc: Print debug information (very verbose) to file /query_config.log
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: Add additional context (time and file) to log messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Print only warnings and error messages
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_comp_sets
  doc: "[{all,allactive,drv,cam,clm,cice,mpaso,mali,mpassi}]\nQuery compsets corresponding\
    \ to the target component for the e3sm model. If no component is given, lists\
    \ compsets defined by all components"
  type: boolean
  inputBinding:
    prefix: --compsets
- id: in_components
  doc: "[{all,None,cam,datm,satm,xatm,vic,clm,dlnd,slnd,xlnd,mpassi,cice,dice,sice,xice,mpaso,docn,socn,xocn,mosart,drof,srof,xrof,mali,malisia,dglc,sglc,xglc,ww,dwav,swav,xwav,sesp,desp}]\n\
    Query component settings corresponding to the target component for e3sm model.\n\
    If the option is empty, then the lists settings defined by all components is output"
  type: boolean
  inputBinding:
    prefix: --components
- id: in_long
  doc: Provide long output for queries
  type: boolean
  inputBinding:
    prefix: --long
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- query_config
