#!/usr/bin/env cwl-runner

baseCommand:
- fasten_clean
class: CommandLineTool
cwlVersion: v1.0
id: fasten_clean
inputs:
- doc: 'Number of CPUs (default: 1)'
  id: num_cpus
  inputBinding:
    prefix: --numcpus
  type: long
- doc: The input reads are interleaved paired-end
  id: paired_end
  inputBinding:
    prefix: --paired-end
  type: boolean
- doc: Print more status messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Minimum length for each read in bp
  id: min_length
  inputBinding:
    prefix: --min-length
  type: long
- doc: Minimum average quality for each read
  id: min_avg_quality
  inputBinding:
    prefix: --min-avg-quality
  type: double
- doc: Trim the edges of each read until a nucleotide of at least X quality is found
  id: min_trim_quality
  inputBinding:
    prefix: --min-trim-quality
  type: long
