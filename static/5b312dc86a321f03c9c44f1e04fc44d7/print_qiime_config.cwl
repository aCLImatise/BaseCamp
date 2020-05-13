class: CommandLineTool
id: print_qiime_config.py.cwl
inputs:
- id: verbose
  doc: 'Print information during execution -- useful for debugging [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: test
  doc: 'Test the QIIME install and configuration [default: False]'
  type: boolean
  inputBinding:
    prefix: --test
- id: q_ii_me_full_install
  doc: 'If passed, report on dependencies required for the QIIME full install. To
    perform tests of the QIIME full install, you must also pass -t. [default: False]'
  type: boolean
  inputBinding:
    prefix: --qiime_full_install
outputs: []
cwlVersion: v1.1
baseCommand:
- print_qiime_config.py
