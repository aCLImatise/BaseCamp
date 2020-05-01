#!/usr/bin/env cwl-runner

baseCommand:
- run_meraculous.sh
class: CommandLineTool
cwlVersion: v1.0
id: run_meraculous.sh
inputs:
- doc: "<label>                : provide a label name for new runs ( Default: 'run'\
    \ )"
  id: label
  inputBinding:
    prefix: -label
  type: boolean
- doc: '<directory>            : provide a run directory name  ( Default: latest run
    )'
  id: dir
  inputBinding:
    prefix: -dir
  type: boolean
- doc: ': restart a previously failed assembly'
  id: restart
  inputBinding:
    prefix: -restart
  type: boolean
- doc: ': restart but preserve any partial results    '
  id: resume
  inputBinding:
    prefix: -resume
  type: boolean
- doc: ': execute one stage and stop'
  id: step
  inputBinding:
    prefix: -step
  type: boolean
- doc: '<stage>                : re-run starting with this stage'
  id: start
  inputBinding:
    prefix: -start
  type: boolean
- doc: '<stage>                : stop after this stage'
  id: stop
  inputBinding:
    prefix: -stop
  type: boolean
- doc: ': save any old stage directories (valid only with -restart)'
  id: archive
  inputBinding:
    prefix: -archive
  type: boolean
- doc: '[0|1|2]          : decide how agressively the pipeline should clean up intermediate
    data ( Default: 1) 0 - do not delete any intermediate outputs (disk space footprint
    may be huge) 1 - delete files that are not used in any of the subsequent stages
    and that are generally not informative to the user 2 - delete files as soon as
    possible.  WARNING!!! You will not be able to rerun the stages individually once
    they have completed!'
  id: cleanup_level
  inputBinding:
    prefix: -cleanup_level
  type: boolean
- doc: '|version                      : about this program'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
