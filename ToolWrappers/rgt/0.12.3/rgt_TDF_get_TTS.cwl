class: CommandLineTool
id: rgt_TDF_get_TTS.cwl
inputs:
- id: in_input_bed_file
  doc: Input BED file of the target regions
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_tts
  doc: Output BED file of the TTSs
  type: File?
  inputBinding:
    prefix: -tts
- id: in_input_fasta_file
  doc: Input FASTA file of the RNA
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_organism
  doc: Define the organism
  type: boolean?
  inputBinding:
    prefix: -organism
- id: in_define_minimum_length
  doc: '[Triplexes] Define the minimum length of triplex (default: 20)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_set_maximal_errorrate
  doc: "[Triplexes] Set the maximal error-rate in % tolerated\n(default: 20)"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_sets_tolerated_number
  doc: "[Triplexes] Sets the tolerated number of consecutive errors\nwith respect\
    \ to the canonical triplex rules as such were found\nto greatly destabilize triplexes\
    \ in vitro (default: 2)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_fr
  doc: "[Triplexes] Activates the filtering of low complexity regions\nand repeats\
    \ in the sequence data (default: off)"
  type: boolean?
  inputBinding:
    prefix: -fr
- id: in_fm
  doc: "[Triplexes] Method to quickly discard non-hits (default:\n0).'0' = greedy\
    \ approach; '1' = q-gram filtering."
  type: boolean?
  inputBinding:
    prefix: -fm
- id: in_of
  doc: '[Triplexes] Define output formats of Triplexes (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -of
- id: in_mf
  doc: "[Triplexes] Merge overlapping features into a cluster and\nreport the spanning\
    \ region."
  type: boolean?
  inputBinding:
    prefix: -mf
- id: in_rm
  doc: '[Triplexes] Set the multiprocessing'
  type: boolean?
  inputBinding:
    prefix: -rm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tts
  doc: Output BED file of the TTSs
  type: File?
  outputBinding:
    glob: $(inputs.in_tts)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-TDF
- get_TTS
