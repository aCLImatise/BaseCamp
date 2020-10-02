class: CommandLineTool
id: asmQC.cwl
inputs:
- id: in_bank
  doc: bank where assembly is stored
  type: boolean
  inputBinding:
    prefix: -bank
- id: in_sc_aff
  doc: take into account scaffolds when reporting results
  type: boolean
  inputBinding:
    prefix: -scaff
- id: in_feat
  doc: write contig features into the bank
  type: boolean
  inputBinding:
    prefix: -feat
- id: in_recompute
  doc: recompute library sizes
  type: boolean
  inputBinding:
    prefix: -recompute
- id: in_update
  doc: update bank with recomputed library sizes
  type: boolean
  inputBinding:
    prefix: -update
- id: in_per_insert
  doc: output per-insert information in <file>
  type: File
  inputBinding:
    prefix: -perinsert
- id: in_min_obs
  doc: "minimum number of good mate-pairs required to recompute\nlibrary sizes"
  type: long
  inputBinding:
    prefix: -minobs
- id: in_num_sd
  doc: "mate-pairs within <n> standard deviations of the mean library\nsize are considered\
    \ good. <n> can be fractional"
  type: long
  inputBinding:
    prefix: -numsd
- id: in_good_cvg
  doc: report regions with good mate coverage less than <n>
  type: string
  inputBinding:
    prefix: -goodcvg
- id: in_cest_at
  doc: "report regions with unusual CE stat (more than <numsd>\nstandard errors from\
    \ mean). cestat implies -recompute and\ninvalidates -shortcvg and -longcvg"
  type: boolean
  inputBinding:
    prefix: -cestat
- id: in_short_cvg
  doc: report regions with short mate coverage greater than <n>
  type: string
  inputBinding:
    prefix: -shortcvg
- id: in_long_cvg
  doc: report regions with long mate coverage greater than <n>
  type: string
  inputBinding:
    prefix: -longcvg
- id: in_same_cvg
  doc: "report regions with coverage by mates with same orientation\ngreater than\
    \ <n>"
  type: string
  inputBinding:
    prefix: -samecvg
- id: in_out_iec_vg
  doc: report regions with outie coverage greater than <n>
  type: string
  inputBinding:
    prefix: -outiecvg
- id: in_linking
  doc: report regions with linking read coverage greater than <n>
  type: string
  inputBinding:
    prefix: -linking
- id: in_single_mate
  doc: report regions with singleton mate coverage > than <n>
  type: string
  inputBinding:
    prefix: -singlemate
- id: in_me_a_change
  doc: "libraries whose mean changed by less than <n> will be\nconsidered unchanged"
  type: string
  inputBinding:
    prefix: -meachange
- id: in_sd_change
  doc: "libraries whose stdev. changed by less than <n> will be\nconsidered unchanged"
  type: string
  inputBinding:
    prefix: -sdchange
- id: in_ce_plot
  doc: file to output CE statistic plot to
  type: File
  inputBinding:
    prefix: -ceplot
- id: in_debug
  doc: output status for each mate-pair to STDERR
  type: boolean
  inputBinding:
    prefix: -debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_per_insert
  doc: output per-insert information in <file>
  type: File
  outputBinding:
    glob: $(inputs.in_per_insert)
- id: out_ce_plot
  doc: file to output CE statistic plot to
  type: File
  outputBinding:
    glob: $(inputs.in_ce_plot)
cwlVersion: v1.1
baseCommand:
- asmQC
