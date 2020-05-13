class: CommandLineTool
id: run_meraculous.sh.cwl
inputs:
- id: label
  doc: "<label>                : provide a label name for new runs ( Default: 'run'\
    \ )"
  type: boolean
  inputBinding:
    prefix: -label
- id: dir
  doc: '<directory>            : provide a run directory name  ( Default: latest run
    )'
  type: boolean
  inputBinding:
    prefix: -dir
- id: restart
  doc: ': restart a previously failed assembly'
  type: boolean
  inputBinding:
    prefix: -restart
- id: resume
  doc: ': restart but preserve any partial results    '
  type: boolean
  inputBinding:
    prefix: -resume
- id: step
  doc: ': execute one stage and stop'
  type: boolean
  inputBinding:
    prefix: -step
- id: start
  doc: '<stage>                : re-run starting with this stage'
  type: boolean
  inputBinding:
    prefix: -start
- id: stop
  doc: '<stage>                : stop after this stage'
  type: boolean
  inputBinding:
    prefix: -stop
- id: archive
  doc: ': save any old stage directories (valid only with -restart)'
  type: boolean
  inputBinding:
    prefix: -archive
- id: cleanup_level
  doc: '[0|1|2]          : decide how agressively the pipeline should clean up intermediate
    data ( Default: 1) 0 - do not delete any intermediate outputs (disk space footprint
    may be huge) 1 - delete files that are not used in any of the subsequent stages
    and that are generally not informative to the user 2 - delete files as soon as
    possible.  WARNING!!! You will not be able to rerun the stages individually once
    they have completed!'
  type: boolean
  inputBinding:
    prefix: -cleanup_level
- id: v
  doc: '|version                      : about this program'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- run_meraculous.sh
