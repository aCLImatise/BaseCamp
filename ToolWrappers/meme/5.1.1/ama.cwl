class: CommandLineTool
id: ama.cwl
inputs:
- id: in_s_dbg
  doc: "Use Markov background model of order <order>\nderived from the sequence to\
    \ compute its\nlikelihood ratios;\noverrides --pvalues, --gcbins and --rma;\n\
    <background file> is required unless\n--sdbg is given."
  type: File?
  inputBinding:
    prefix: --sdbg
- id: in_motif
  doc: "Use only the motif identified by <id>.\nThis option may be repeated."
  type: string?
  inputBinding:
    prefix: --motif
- id: in_motif_pseudo
  doc: "The value <float> times the background\nfrequency is added to the count of\
    \ each\nletter when creating the likelihood\nratio matrix; default: 0.01"
  type: double?
  inputBinding:
    prefix: --motif-pseudo
- id: in_norc
  doc: "Disables the scanning of the reverse\ncomplement strand for complementable\n\
    alphabets. The switch is set automatically\nfor alphabets without complements."
  type: boolean?
  inputBinding:
    prefix: --norc
- id: in_scoring
  doc: "[avg-odds|max-odds]\nIndicates whether the average or\nthe maximum odds should\
    \ be calculated\ndefault: avg-odds"
  type: boolean?
  inputBinding:
    prefix: --scoring
- id: in_rma
  doc: "Scale motif scores to the range [0,1].\n(Relative Motif Affinity).\nMotif\
    \ scores are scaled by the maximum\nscore achievable by that PWM; default:\nMotif\
    \ scores are not normalized."
  type: boolean?
  inputBinding:
    prefix: --rma
- id: in_p_values
  doc: "Print p-value of avg-odds score in cisml\noutput. Ignored for max-odds scoring;\n\
    default: P-values are not printed."
  type: boolean?
  inputBinding:
    prefix: --pvalues
- id: in_gc_bins
  doc: "Compensate p-values for GC* content of\neach sequence using given number of\n\
    GC range bins. Recommended bins: 41.\nThis option only works with complementable\n\
    alphabets with exactly 2 complement pairs;\ndefault: P-values are based on\nfrequencies\
    \ in background file.\n* GC refers to any complement pair, not\nactually G and\
    \ C except for the case of DNA."
  type: long?
  inputBinding:
    prefix: --gcbins
- id: in_cs
  doc: "Enable combining sequences with same\nidentifier by taking the average score\n\
    and the Sidac corrected p-value."
  type: boolean?
  inputBinding:
    prefix: --cs
- id: in_o_format
  doc: "[gff|cisml]   Output file format; default: cisml.\nIgnored if --o or --oc\
    \ option used,\nand then CisML (.xml) and GFF (.txt)\nfiles are both output into\
    \ the\nspecified directory."
  type: File?
  inputBinding:
    prefix: --o-format
- id: in_output_available_formats_todirectory_give
  doc: "Output all available formats to\n<directory>; give up if <directory>\nexists."
  type: Directory?
  inputBinding:
    prefix: --o
- id: in_oc
  doc: "Output all available formats to\n<directory>; If <directory> exists\noverwrite\
    \ contents."
  type: Directory?
  inputBinding:
    prefix: --oc
- id: in_verbosity
  doc: "[1|2|3|4]    Controls amount of screen output;\ndefault: 2"
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_max_seq_length
  doc: "Set the maximum length allowed for\ninput sequences; default: 250000000"
  type: long?
  inputBinding:
    prefix: --max-seq-length
- id: in_last
  doc: "Use only scores of (up to) last <n>\nsequence positions to compute AMA."
  type: long?
  inputBinding:
    prefix: --last
- id: in_motif_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_background_file
  doc: ''
  type: File?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o_format
  doc: "[gff|cisml]   Output file format; default: cisml.\nIgnored if --o or --oc\
    \ option used,\nand then CisML (.xml) and GFF (.txt)\nfiles are both output into\
    \ the\nspecified directory."
  type: File?
  outputBinding:
    glob: $(inputs.in_o_format)
- id: out_output_available_formats_todirectory_give
  doc: "Output all available formats to\n<directory>; give up if <directory>\nexists."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_available_formats_todirectory_give)
- id: out_oc
  doc: "Output all available formats to\n<directory>; If <directory> exists\noverwrite\
    \ contents."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_oc)
hints: []
cwlVersion: v1.1
baseCommand:
- ama
