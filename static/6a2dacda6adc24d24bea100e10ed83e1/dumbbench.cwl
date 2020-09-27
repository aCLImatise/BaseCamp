class: CommandLineTool
id: dumbbench.cwl
inputs:
- id: in_precision
  doc: 'Set the target precision (default: 0.10=10%)'
  type: double
  inputBinding:
    prefix: --precision
- id: in_abs_precision
  doc: 'Set the target absolute precision (default: 0)'
  type: long
  inputBinding:
    prefix: --absprecision
- id: in_verbose
  doc: Increase verbosity. Increases up to three times.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_initial
  doc: 'Set number of initial timing runs (default: 20)'
  type: long
  inputBinding:
    prefix: --initial
- id: in_maxiter
  doc: Set a hard maximum number of iterations (default:1000)
  type: long
  inputBinding:
    prefix: --maxiter
- id: in_dry_run
  doc: Set explicit dry-run command or code.
  type: string
  inputBinding:
    prefix: --dry-run
- id: in_no_dry_run
  doc: Disable subtraction of dry runs.
  type: boolean
  inputBinding:
    prefix: --no-dry-run
- id: in_raw
  doc: Set raw output mode. Only the final count will be
  type: boolean
  inputBinding:
    prefix: --raw
- id: in_float
  doc: Numbers will be printed in
  type: boolean
  inputBinding:
    prefix: --float
- id: in_std
  doc: Use the standard deviation instead of the MAD as a
  type: boolean
  inputBinding:
    prefix: --std
- id: in_code
  doc: ='code'     Benchmarks Perl code (can be specified multiple times
  type: boolean
  inputBinding:
    prefix: --code
- id: in_package
  doc: ='package' Perl package of subroutines to benchmark. The
  type: boolean
  inputBinding:
    prefix: --package
- id: in_tablex_output_timings
  doc: '|table=X       Output timings as a data table suitable for R. Each'
  type: boolean
  inputBinding:
    prefix: --t
- id: in_pin_frequency
  doc: "Advanced option (Linux only): Attempt to use 'sudo'"
  type: boolean
  inputBinding:
    prefix: --pin-frequency
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dumbbench
