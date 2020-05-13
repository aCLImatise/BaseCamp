class: CommandLineTool
id: quake.py.cwl
inputs:
- id: no_jelly
  doc: Count k-mers using a simpler program than Jellyfish
  type: boolean
  inputBinding:
    prefix: --no_jelly
- id: no_count
  doc: 'Kmers are already counted and in expected file [reads file].qcts or [reads
    file].cts [default: False]'
  type: boolean
  inputBinding:
    prefix: --no_count
- id: int
  doc: 'Count kmers as integers w/o the use of quality values [default: False]'
  type: boolean
  inputBinding:
    prefix: --int
- id: hash_size
  doc: Jellyfish hash-size parameter. Quake will estimate using k if not given
  type: string
  inputBinding:
    prefix: --hash_size
- id: no_cut
  doc: 'Coverage model is optimized and cutoff was printed to expected file cutoff.txt
    [default: False]'
  type: boolean
  inputBinding:
    prefix: --no_cut
- id: ratio
  doc: 'Likelihood ratio to set trusted/untrusted cutoff. Generally set between 10-1000
    with lower numbers suggesting a lower threshold. [default: 200]'
  type: string
  inputBinding:
    prefix: --ratio
- id: l
  doc: Return only reads corrected and/or trimmed to <min_read> bp
  type: long
  inputBinding:
    prefix: -l
- id: u
  doc: Output error reads even if they can't be corrected, maintaing paired end reads
  type: boolean
  inputBinding:
    prefix: -u
- id: t
  doc: Use BWA-like trim parameter <trim_par>
  type: string
  inputBinding:
    prefix: -t
- id: headers
  doc: Output only the original read headers without correction messages
  type: boolean
  inputBinding:
    prefix: --headers
- id: log
  doc: Output a log of all corrections into *.log as "quality position new_nt old_nt"
  type: boolean
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- quake.py
