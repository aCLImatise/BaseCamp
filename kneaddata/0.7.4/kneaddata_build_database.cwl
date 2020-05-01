#!/usr/bin/env cwl-runner

baseCommand:
- kneaddata_build_database
class: CommandLineTool
cwlVersion: v1.0
id: kneaddata_build_database
inputs:
- doc: input FASTA file
  id: fast_a
  inputBinding:
    position: 0
  type: string
- doc: prefix for all output files
  id: output_prefix
  inputBinding:
    prefix: --output-prefix
  type: string
- doc: path to bmtool executable
  id: bm_tool_path
  inputBinding:
    prefix: --bmtool-path
  type: string
- doc: path to srprism executable
  id: sr_prism_path
  inputBinding:
    prefix: --srprism-path
  type: string
- doc: path to makeblastdb executable
  id: make_blast_db_path
  inputBinding:
    prefix: --makeblastdb-path
  type: string
- doc: location to store log files
  id: logdir
  inputBinding:
    prefix: --logdir
  type: string
