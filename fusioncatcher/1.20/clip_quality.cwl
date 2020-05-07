class: CommandLineTool
id: clip_quality.py.cwl
inputs:
- id: input
  doc: The input FASTQ file.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTQ file contained the clipped reads.
  type: string
  inputBinding:
    prefix: --output
- id: log
  doc: It outputs a detailed log.
  type: string
  inputBinding:
    prefix: --log
- id: length
  doc: Number of consecutive nucleotides with the quality scores below or equal the
    given threshold. Default is 4.
  type: string
  inputBinding:
    prefix: --length
- id: threshold
  doc: The quality score below (or equal) the nucleotides are considered low quality
    and will be trimmed (for example 10 for Q10). Default is 5.
  type: string
  inputBinding:
    prefix: --threshold
- id: score_type
  doc: The quality score system used. The choices are SOLEXA or SANGER. Default is
    solexa.
  type: string
  inputBinding:
    prefix: --score-type
- id: author
  doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  type: string
  inputBinding:
    prefix: --author
- id: quiet
  doc: Do not print status messages to console.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: processes
  doc: Number of parallel processes/CPUs to be used for computations. In case of value
    0 then the program will use all the CPUs which are found. The default value is
    0.
  type: string
  inputBinding:
    prefix: --processes
outputs: []
cwlVersion: v1.1
baseCommand:
- clip_quality.py
