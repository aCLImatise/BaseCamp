#!/usr/bin/env cwl-runner

baseCommand:
- run_breakseq2.py
class: CommandLineTool
cwlVersion: v1.0
id: run_breakseq2.py
inputs:
- doc: 'Number of processes to use for parallelism (default: 1)'
  id: n_threads
  inputBinding:
    prefix: --nthreads
  type: string
- doc: 'Alignment BAMs (default: [])'
  id: bams
  inputBinding:
    prefix: --bams
  type:
    items: string
    type: array
- doc: 'Working directory (default: work)'
  id: work
  inputBinding:
    prefix: --work
  type: string
- doc: 'List of chromosomes to process (default: [])'
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: 'Reference FASTA (default: None)'
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: 'Sample name. Leave unspecified to infer sample name from BAMs. (default: None)'
  id: sample
  inputBinding:
    prefix: --sample
  type: string
- doc: 'Keep temporary files (default: False)'
  id: keep_temp
  inputBinding:
    prefix: --keep_temp
  type: boolean
- doc: 'Breakpoint library FASTA (default: None)'
  id: bp_lib
  inputBinding:
    prefix: --bplib
  type: string
- doc: 'Path to BWA executable (default: None)'
  id: bwa
  inputBinding:
    prefix: --bwa
  type: string
- doc: 'Path to SAMtools executable (default: None)'
  id: sam_tools
  inputBinding:
    prefix: --samtools
  type: string
- doc: 'Minimum span for junction (default: 10)'
  id: min_span
  inputBinding:
    prefix: --min_span
  type: long
- doc: 'Window size (default: 100)'
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: 'Min overlap (default: 10)'
  id: min_overlap
  inputBinding:
    prefix: --min_overlap
  type: long
- doc: 'Breakpoint GFF input (default: None)'
  id: bp_lib_gff
  inputBinding:
    prefix: --bplib_gff
  type: string
- doc: 'Junction length (default: 200)'
  id: junction_length
  inputBinding:
    prefix: --junction_length
  type: string
- doc: '{1,2} Version of breakpoint library format to use (default: 2)'
  id: format_version
  inputBinding:
    prefix: --format_version
  type: boolean
