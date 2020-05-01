#!/usr/bin/env cwl-runner

baseCommand:
- test_haplotypes
class: CommandLineTool
cwlVersion: v1.0
id: test_haplotypes
inputs:
- doc: "\e[1;33;49m[=<boolean value>]"
  id: auto_start_dbg
  inputBinding:
    prefix: --auto_start_dbg
  type: boolean
- doc: "\e[1;33;49m=<value>"
  id: break_exec_path
  inputBinding:
    prefix: --break_exec_path
  type: boolean
- doc: "\e[1;33;49m[=<boolean value>]"
  id: build_info
  inputBinding:
    prefix: --build_info
  type: boolean
- doc: "\e[1;33;49m[=<alloc order number>]"
  id: detect_memory_leaks
  inputBinding:
    prefix: --detect_memory_leaks
  type: boolean
- doc: "\e[1;33;49m[=<HRF|DOT>]"
  id: list_content
  inputBinding:
    prefix: --list_content
  type: boolean
- doc: "\e[1;33;49m[=<boolean value>]"
  id: list_labels
  inputBinding:
    prefix: --list_labels
  type: boolean
- doc: "\e[1;33;49m=<HRF|CLF|XML|JUNIT>"
  id: log_format
  inputBinding:
    prefix: --log_format
  type: boolean
- doc: "\e[1;33;49m=<all|success|test_suite|unit_scope|message|warning|error|cpp_exception|system_error|fatal_error|nothing>"
  id: log_level
  inputBinding:
    prefix: --log_level
  type: boolean
- doc: "\e[1;33;49m=<stderr|stdout|file name>"
  id: log_sink
  inputBinding:
    prefix: --log_sink
  type: boolean
- doc: "\e[1;33;49m=log_format,log_level,log_sink[:log_format,log_level,log_sink]"
  id: logger
  inputBinding:
    prefix: --logger
  type: boolean
- doc: "\e[1;33;49m=<HRF|CLF|XML>"
  id: output_format
  inputBinding:
    prefix: --output_format
  type: boolean
- doc: "\e[1;33;49m[=<seed>]"
  id: random
  inputBinding:
    prefix: --random
  type: boolean
- doc: "\e[1;33;49m=<HRF|CLF|XML>"
  id: report_format
  inputBinding:
    prefix: --report_format
  type: boolean
- doc: "\e[1;33;49m=<confirm|short|detailed|no>"
  id: report_level
  inputBinding:
    prefix: --report_level
  type: boolean
- doc: "\e[1;33;49m=<file name>"
  id: report_memory_leaks_to
  inputBinding:
    prefix: --report_memory_leaks_to
  type: boolean
- doc: "\e[1;33;49m=<stderr|stdout|file name>"
  id: report_sink
  inputBinding:
    prefix: --report_sink
  type: boolean
- doc: "\e[1;33;49m=<test unit filter>"
  id: run_test
  inputBinding:
    prefix: --run_test
  type: boolean
- doc: "\e[1;33;49m[=<boolean value>]"
  id: save_pattern
  inputBinding:
    prefix: --save_pattern
  type: boolean
- doc: "\e[1;33;49m[=<boolean value>]"
  id: show_progress
  inputBinding:
    prefix: --show_progress
  type: boolean
- doc: "\e[1;33;49m[=<boolean value>]"
  id: wait_for_debugger
  inputBinding:
    prefix: --wait_for_debugger
  type: boolean
