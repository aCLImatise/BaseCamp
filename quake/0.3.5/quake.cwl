#!/usr/bin/env cwl-runner

baseCommand:
- quake.py
class: CommandLineTool
cwlVersion: v1.0
id: quake.py
inputs:
- doc: Count k-mers using a simpler program than Jellyfish
  id: no_jelly
  inputBinding:
    prefix: --no_jelly
  type: boolean
- doc: 'Kmers are already counted and in expected file [reads file].qcts or [reads
    file].cts [default: False]'
  id: no_count
  inputBinding:
    prefix: --no_count
  type: boolean
- doc: 'Count kmers as integers w/o the use of quality values [default: False]'
  id: int
  inputBinding:
    prefix: --int
  type: boolean
- doc: Jellyfish hash-size parameter. Quake will estimate using k if not given
  id: hash_size
  inputBinding:
    prefix: --hash_size
  type: string
- doc: 'Coverage model is optimized and cutoff was printed to expected file cutoff.txt
    [default: False]'
  id: no_cut
  inputBinding:
    prefix: --no_cut
  type: boolean
- doc: 'Likelihood ratio to set trusted/untrusted cutoff. Generally set between 10-1000
    with lower numbers suggesting a lower threshold. [default: 200]'
  id: ratio
  inputBinding:
    prefix: --ratio
  type: string
- doc: Return only reads corrected and/or trimmed to <min_read> bp
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: Output error reads even if they can't be corrected, maintaing paired end reads
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: Use BWA-like trim parameter <trim_par>
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: Output only the original read headers without correction messages
  id: headers
  inputBinding:
    prefix: --headers
  type: boolean
- doc: Output a log of all corrections into *.log as "quality position new_nt old_nt"
  id: log
  inputBinding:
    prefix: --log
  type: boolean
