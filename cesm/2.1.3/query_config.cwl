#!/usr/bin/env cwl-runner

baseCommand:
- query_config
class: CommandLineTool
cwlVersion: v1.0
id: query_config
inputs:
- doc: Print debug information (very verbose) to file /tmp/tmpyq76ofy5/query_config.log
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Add additional context (time and file) to log messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Print only warnings and error messages
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: '[{all,allactive,drv,cam,clm,cice,mpaso,mali,mpassi}] Query compsets corresponding
    to the target component for the e3sm model. If no component is given, lists compsets
    defined by all components'
  id: comp_sets
  inputBinding:
    prefix: --compsets
  type: boolean
- doc: '[{all,None,cam,datm,satm,xatm,vic,clm,dlnd,slnd,xlnd,mpassi,cice,dice,sice,xice,mpaso,docn,socn,xocn,mosart,drof,srof,xrof,mali,malisia,dglc,sglc,xglc,ww,dwav,swav,xwav,sesp,desp}]
    Query component settings corresponding to the target component for e3sm model.
    If the option is empty, then the lists settings defined by all components is output'
  id: components
  inputBinding:
    prefix: --components
  type: boolean
- doc: Query supported model grids for e3sm model.
  id: grids
  inputBinding:
    prefix: --grids
  type: boolean
- doc: "[{all,current,edison,cori-haswell,cori-knl,stampede2,mac,linux-generic,melvin,anlworkstation,sandiatoss3,ghost,blues,anvil,bebop,cetus,cab,syrah,quartz,mira,theta,sooty,cascade,constance,oic2,oic5,cades,titan,eos,grizzly,wolf,mesabi,itasca,lawrencium-lr3,lawrencium-lr2,eddi,summitdev,summit}]\
    \ Query supported machines for e3sm model. If option is left empty then all machines\
    \ are listed, If the option is 'current' then only the current machine details\
    \ are listed."
  id: machines
  inputBinding:
    prefix: --machines
  type: boolean
- doc: Provide long output for queries
  id: long
  inputBinding:
    prefix: --long
  type: boolean
