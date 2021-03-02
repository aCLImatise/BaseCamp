class: CommandLineTool
id: run_meraculous.sh.cwl
inputs:
- id: in_config_config_file
  doc: '|config <config file>         : user config file'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_label
  doc: "<label>                : provide a label name for new runs ( Default: 'run'\
    \ )"
  type: boolean?
  inputBinding:
    prefix: -label
- id: in_dir
  doc: '<directory>            : provide a run directory name  ( Default: latest run
    )'
  type: boolean?
  inputBinding:
    prefix: -dir
- id: in_restart
  doc: ': restart a previously failed assembly'
  type: boolean?
  inputBinding:
    prefix: -restart
- id: in_resume
  doc: ': restart but preserve any partial results'
  type: boolean?
  inputBinding:
    prefix: -resume
- id: in_step
  doc: ': execute one stage and stop'
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_start
  doc: '<stage>                : re-run starting with this stage'
  type: boolean?
  inputBinding:
    prefix: -start
- id: in_stop
  doc: '<stage>                : stop after this stage'
  type: boolean?
  inputBinding:
    prefix: -stop
- id: in_archive
  doc: ': save any old stage directories (valid only with -restart)'
  type: boolean?
  inputBinding:
    prefix: -archive
- id: in_cleanup_level
  doc: "[0|1|2]          : decide how agressively the pipeline should clean up intermediate\
    \ data ( Default: 1)\n0 - do not delete any intermediate outputs (disk space footprint\
    \ may be huge)\n1 - delete files that are not used in any of the subsequent stages\
    \ and that are generally not informative to the user\n2 - delete files as soon\
    \ as possible.  WARNING!!! You will not be able to rerun the\nstages individually\
    \ once they have completed!"
  type: boolean?
  inputBinding:
    prefix: -cleanup_level
- id: in_version__program
  doc: '|version                      : about this program'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_meraculous.sh
