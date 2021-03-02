class: CommandLineTool
id: asmQC2.cwl
inputs:
- id: in_bank
  doc: bank where assembly is stored
  type: boolean?
  inputBinding:
    prefix: -bank
- id: in_feat
  doc: write contig features into the bank
  type: boolean?
  inputBinding:
    prefix: -feat
- id: in_recompute
  doc: recompute library sizes
  type: boolean?
  inputBinding:
    prefix: -recompute
- id: in_update
  doc: update bank with recomputed library sizes
  type: boolean?
  inputBinding:
    prefix: -update
- id: in_min_obs
  doc: "minimum number of good mate-pairs required to recompute\nlibrary sizes"
  type: long?
  inputBinding:
    prefix: -minobs
- id: in_num_sd
  doc: "mate-pairs within <n> standard deviations of the mean\nlibrary size are considered\
    \ good. <n> can be fractional"
  type: long?
  inputBinding:
    prefix: -numsd
- id: in_good_cvg
  doc: report regions with good mate coverage less than <n>
  type: string?
  inputBinding:
    prefix: -goodcvg
- id: in_short_cvg
  doc: report regions with short mate coverage greater than <n>
  type: string?
  inputBinding:
    prefix: -shortcvg
- id: in_long_cvg
  doc: report regions with long mate coverage greater than <n>
  type: string?
  inputBinding:
    prefix: -longcvg
- id: in_same_cvg
  doc: "report regions with coverage by mates with same orientation\ngreater than\
    \ <n>"
  type: string?
  inputBinding:
    prefix: -samecvg
- id: in_out_iec_vg
  doc: report regions with outie coverage greater than <n>
  type: string?
  inputBinding:
    prefix: -outiecvg
- id: in_linking
  doc: report regions with linking read coverage greater than <n>
  type: string?
  inputBinding:
    prefix: -linking
- id: in_single_mate
  doc: report regions with singleton mate coverage > than <n>
  type: string?
  inputBinding:
    prefix: -singlemate
- id: in_me_a_change
  doc: libraries whose mean changed by less than <n> will be considered unchanged
  type: string?
  inputBinding:
    prefix: -meachange
- id: in_sd_change
  doc: libraries whose stdev. changed by less than <n> will be considered unchanged
  type: string?
  inputBinding:
    prefix: -sdchange
- id: in_debug
  doc: output status for each mate-pair to STDERR
  type: boolean?
  inputBinding:
    prefix: -debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- asmQC2
