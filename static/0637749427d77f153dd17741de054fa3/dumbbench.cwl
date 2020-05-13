class: CommandLineTool
id: dumbbench.cwl
inputs:
- id: abs_precision
  doc: 'Set the target absolute precision (default: 0) Set to 0 to disable.'
  type: string
  inputBinding:
    prefix: --absprecision
- id: verbose
  doc: Increase verbosity. Increases up to three times.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: initial
  doc: 'Set number of initial timing runs (default: 20) Increase, not decrease this
    number if possible.'
  type: string
  inputBinding:
    prefix: --initial
- id: maxiter
  doc: Set a hard maximum number of iterations (default:1000) If this hard limit is
    hit, the precision is off.
  type: string
  inputBinding:
    prefix: --maxiter
- id: dry_run
  doc: Set explicit dry-run command or code.
  type: string
  inputBinding:
    prefix: --dry-run
- id: no_dry_run
  doc: Disable subtraction of dry runs.
  type: boolean
  inputBinding:
    prefix: --no-dry-run
- id: raw
  doc: Set raw output mode. Only the final count will be printed to stdout.
  type: boolean
  inputBinding:
    prefix: --raw
- id: float
  doc: Numbers will be printed in default float format instead of scientific notation.
  type: boolean
  inputBinding:
    prefix: --float
- id: std
  doc: Use the standard deviation instead of the MAD as a measure of variability.
  type: boolean
  inputBinding:
    prefix: --std
- id: code
  doc: ='code'     Benchmarks Perl code (can be specified multiple times for multiple
    benchmarks)
  type: boolean
  inputBinding:
    prefix: --code
- id: package
  doc: ='package' Perl package of subroutines to benchmark. The package must define
    get_subs_to_benchmark() that returns a list of subroutine names to benchmark
  type: boolean
  inputBinding:
    prefix: --package
- id: t
  doc: '|table=X       Output timings as a data table suitable for R. Each column
    of timings is headed by the code name.'
  type: boolean
  inputBinding:
    prefix: --t
- id: pin_frequency
  doc: "Advanced option (Linux only): Attempt to use 'sudo' to pin the CPU frequency\
    \ on CPUs that can do dynamic frequency scaling. This improves accuracy, but relies\
    \ on a hardcoded location in the /sys/ filesystem. Use at your own risk."
  type: boolean
  inputBinding:
    prefix: --pin-frequency
outputs: []
cwlVersion: v1.1
baseCommand:
- dumbbench
