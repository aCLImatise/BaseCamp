class: CommandLineTool
id: rgt_TDF_get_TTS.cwl
inputs:
- id: i
  doc: Input BED file of the target regions
  type: boolean
  inputBinding:
    prefix: -i
- id: tts
  doc: Output BED file of the TTSs
  type: boolean
  inputBinding:
    prefix: -tts
- id: r
  doc: Input FASTA file of the RNA
  type: boolean
  inputBinding:
    prefix: -r
- id: organism
  doc: Define the organism
  type: boolean
  inputBinding:
    prefix: -organism
- id: l
  doc: '[Triplexes] Define the minimum length of triplex (default: 20)'
  type: boolean
  inputBinding:
    prefix: -l
- id: e
  doc: '[Triplexes] Set the maximal error-rate in % tolerated (default: 20)'
  type: boolean
  inputBinding:
    prefix: -e
- id: c
  doc: '[Triplexes] Sets the tolerated number of consecutive errors with respect to
    the canonical triplex rules as such were found to greatly destabilize triplexes
    in vitro (default: 2)'
  type: boolean
  inputBinding:
    prefix: -c
- id: fr
  doc: '[Triplexes] Activates the filtering of low complexity regions and repeats
    in the sequence data (default: off)'
  type: boolean
  inputBinding:
    prefix: -fr
- id: fm
  doc: "[Triplexes] Method to quickly discard non-hits (default: 0).'0' = greedy approach;\
    \ '1' = q-gram filtering."
  type: boolean
  inputBinding:
    prefix: -fm
- id: of
  doc: '[Triplexes] Define output formats of Triplexes (default: 1)'
  type: boolean
  inputBinding:
    prefix: -of
- id: mf
  doc: '[Triplexes] Merge overlapping features into a cluster and report the spanning
    region.'
  type: boolean
  inputBinding:
    prefix: -mf
- id: rm
  doc: '[Triplexes] Set the multiprocessing'
  type: boolean
  inputBinding:
    prefix: -rm
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-TDF
- get_TTS
