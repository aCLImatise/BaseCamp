class: CommandLineTool
id: test_haplotypes.cwl
inputs:
- id: auto_start_dbg
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean
  inputBinding:
    prefix: --auto_start_dbg
- id: break_exec_path
  doc: "\e[1;33;49m=<value>"
  type: boolean
  inputBinding:
    prefix: --break_exec_path
- id: build_info
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean
  inputBinding:
    prefix: --build_info
- id: detect_memory_leaks
  doc: "\e[1;33;49m[=<alloc order number>]"
  type: boolean
  inputBinding:
    prefix: --detect_memory_leaks
- id: list_content
  doc: "\e[1;33;49m[=<HRF|DOT>]"
  type: boolean
  inputBinding:
    prefix: --list_content
- id: list_labels
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean
  inputBinding:
    prefix: --list_labels
- id: log_format
  doc: "\e[1;33;49m=<HRF|CLF|XML|JUNIT>"
  type: boolean
  inputBinding:
    prefix: --log_format
- id: log_level
  doc: "\e[1;33;49m=<all|success|test_suite|unit_scope|message|warning|error|cpp_exception|system_error|fatal_error|nothing>"
  type: boolean
  inputBinding:
    prefix: --log_level
- id: log_sink
  doc: "\e[1;33;49m=<stderr|stdout|file name>"
  type: boolean
  inputBinding:
    prefix: --log_sink
- id: logger
  doc: "\e[1;33;49m=log_format,log_level,log_sink[:log_format,log_level,log_sink]"
  type: boolean
  inputBinding:
    prefix: --logger
- id: output_format
  doc: "\e[1;33;49m=<HRF|CLF|XML>"
  type: boolean
  inputBinding:
    prefix: --output_format
- id: random
  doc: "\e[1;33;49m[=<seed>]"
  type: boolean
  inputBinding:
    prefix: --random
- id: report_format
  doc: "\e[1;33;49m=<HRF|CLF|XML>"
  type: boolean
  inputBinding:
    prefix: --report_format
- id: report_level
  doc: "\e[1;33;49m=<confirm|short|detailed|no>"
  type: boolean
  inputBinding:
    prefix: --report_level
- id: report_memory_leaks_to
  doc: "\e[1;33;49m=<file name>"
  type: boolean
  inputBinding:
    prefix: --report_memory_leaks_to
- id: report_sink
  doc: "\e[1;33;49m=<stderr|stdout|file name>"
  type: boolean
  inputBinding:
    prefix: --report_sink
- id: run_test
  doc: "\e[1;33;49m=<test unit filter>"
  type: boolean
  inputBinding:
    prefix: --run_test
- id: save_pattern
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean
  inputBinding:
    prefix: --save_pattern
- id: show_progress
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean
  inputBinding:
    prefix: --show_progress
- id: wait_for_debugger
  doc: "\e[1;33;49m[=<boolean value>]"
  type: boolean
  inputBinding:
    prefix: --wait_for_debugger
outputs: []
cwlVersion: v1.1
baseCommand:
- test_haplotypes
