#!/usr/bin/env cwl-runner

baseCommand:
- cnvetti
class: CommandLineTool
cwlVersion: v1.0
id: cnvetti
inputs:
- doc: Low-level access to the CNVetti primitives.
  id: cmd
  inputBinding:
    position: 0
  type: string
- doc: Easy-to-use shortcuts for command and important use cases.
  id: quick
  inputBinding:
    position: 1
  type: string
- doc: Visualization of coverage information (on-target, off-target, and genome-wide
    bins).
  id: visualize
  inputBinding:
    position: 2
  type: string
- doc: Perform annotate called CNV result BCF files
  id: annotate
  inputBinding:
    position: 3
  type: string
- doc: Prints this message or the help of the given subcommand(s)
  id: help
  inputBinding:
    position: 4
  type: string
- doc: Increase verbosity
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Decrease verbosity
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Number of additional threads to use for (de)compression in I/O. [default:
    0]'
  id: io_threads
  inputBinding:
    prefix: --io-threads
  type: string
