#!/usr/bin/env cwl-runner

baseCommand:
- clip_quality.py
class: CommandLineTool
cwlVersion: v1.0
id: clip_quality.py
inputs:
- doc: The input FASTQ file.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output FASTQ file contained the clipped reads.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: It outputs a detailed log.
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: Number of consecutive nucleotides with the quality scores below or equal the
    given threshold. Default is 4.
  id: length
  inputBinding:
    prefix: --length
  type: string
- doc: The quality score below (or equal) the nucleotides are considered low quality
    and will be trimmed (for example 10 for Q10). Default is 5.
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: The quality score system used. The choices are SOLEXA or SANGER. Default is
    solexa.
  id: score_type
  inputBinding:
    prefix: --score-type
  type: string
- doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  id: author
  inputBinding:
    prefix: --author
  type: string
- doc: Do not print status messages to console.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Number of parallel processes/CPUs to be used for computations. In case of value
    0 then the program will use all the CPUs which are found. The default value is
    0.
  id: processes
  inputBinding:
    prefix: --processes
  type: string
