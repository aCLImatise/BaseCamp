class: CommandLineTool
id: query_config.cwl
inputs:
- id: debug
  doc: Print debug information (very verbose) to file /tmp/tmpyq76ofy5/query_config.log
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: Add additional context (time and file) to log messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: silent
  doc: Print only warnings and error messages
  type: boolean
  inputBinding:
    prefix: --silent
- id: comp_sets
  doc: '[{all,allactive,drv,cam,clm,cice,mpaso,mali,mpassi}] Query compsets corresponding
    to the target component for the e3sm model. If no component is given, lists compsets
    defined by all components'
  type: boolean
  inputBinding:
    prefix: --compsets
- id: components
  doc: '[{all,None,cam,datm,satm,xatm,vic,clm,dlnd,slnd,xlnd,mpassi,cice,dice,sice,xice,mpaso,docn,socn,xocn,mosart,drof,srof,xrof,mali,malisia,dglc,sglc,xglc,ww,dwav,swav,xwav,sesp,desp}]
    Query component settings corresponding to the target component for e3sm model.
    If the option is empty, then the lists settings defined by all components is output'
  type: boolean
  inputBinding:
    prefix: --components
- id: grids
  doc: Query supported model grids for e3sm model.
  type: boolean
  inputBinding:
    prefix: --grids
- id: machines
  doc: "[{all,current,edison,cori-haswell,cori-knl,stampede2,mac,linux-generic,melvin,anlworkstation,sandiatoss3,ghost,blues,anvil,bebop,cetus,cab,syrah,quartz,mira,theta,sooty,cascade,constance,oic2,oic5,cades,titan,eos,grizzly,wolf,mesabi,itasca,lawrencium-lr3,lawrencium-lr2,eddi,summitdev,summit}]\
    \ Query supported machines for e3sm model. If option is left empty then all machines\
    \ are listed, If the option is 'current' then only the current machine details\
    \ are listed."
  type: boolean
  inputBinding:
    prefix: --machines
- id: long
  doc: Provide long output for queries
  type: boolean
  inputBinding:
    prefix: --long
outputs: []
cwlVersion: v1.1
baseCommand:
- query_config
