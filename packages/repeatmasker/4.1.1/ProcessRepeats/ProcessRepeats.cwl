class: CommandLineTool
id: ProcessRepeats.cwl
inputs:
- id: in_species
  doc: "Post process RepeatMasker results run on sequence from this species.\nDefault\
    \ is human."
  type: string?
  inputBinding:
    prefix: -species
- id: in_lib
  doc: "Skips most processing, does not produce a .tbl file unless the\ncustome library\
    \ is in the \">name#class\" format."
  type: File?
  inputBinding:
    prefix: -lib
- id: in_no_low
  doc: "Does not display simple repeats or low_complexity DNA in the\nannotation."
  type: boolean?
  inputBinding:
    prefix: -nolow
- id: in_no_int
  doc: Skips steps specific to interspersed repeats, saving lots of time.
  type: boolean?
  inputBinding:
    prefix: -noint
- id: in_l_cam_big
  doc: "Outputs ambiguous DNA transposon fragments using a lower case name.\nAll other\
    \ repeats are listed in upper case. Ambiguous fragments\nmatch multiple repeat\
    \ elements and can only be called based on\nflanking repeat information."
  type: boolean?
  inputBinding:
    prefix: -lcambig
- id: in_creates_untouched_file
  doc: Creates an untouched annotation file besides the manipulated file.
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_xm
  doc: "an additional output file in cross_match format (for\nparsing)."
  type: File?
  inputBinding:
    prefix: -xm
- id: in_ace
  doc: Creates an additional output file in ACeDB format.
  type: File?
  inputBinding:
    prefix: -ace
- id: in_gff
  doc: Creates an additional Gene Feature Finding format.
  type: boolean?
  inputBinding:
    prefix: -gff
- id: in_poly
  doc: "Creates an output file listing only potentially polymorphic simple\nrepeats."
  type: File?
  inputBinding:
    prefix: -poly
- id: in_no_id
  doc: "Leaves out final column with unique number for each element (was\ndefault)."
  type: boolean?
  inputBinding:
    prefix: -no_id
- id: in_excl_n
  doc: "Calculates repeat densities excluding long stretches of Ns in the\nquery."
  type: boolean?
  inputBinding:
    prefix: -excln
- id: in_orf_two
  doc: "Results in sometimes negative coordinates for L1 elements; all L1\nsubfamilies\
    \ are aligned over the ORF2 region, sometimes improving\ninterpretation of data."
  type: boolean?
  inputBinding:
    prefix: -orf2
- id: in_shows_alignments_align
  doc: Shows the alignments in a .align output file.
  type: File?
  inputBinding:
    prefix: -a
- id: in_mask_source
  doc: "Instructs ProcessRepeats to mask the sequence file using the\nannotation."
  type: File?
  inputBinding:
    prefix: -maskSource
- id: in_mask_repeats_lower
  doc: Mask repeats with a lower case 'x'.
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_xsmall
  doc: Mask repeats by making the sequence lowercase.
  type: boolean?
  inputBinding:
    prefix: -xsmall
- id: in_biology
  doc: AUTHORS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_xm
  doc: "an additional output file in cross_match format (for\nparsing)."
  type: File?
  outputBinding:
    glob: $(inputs.in_xm)
- id: out_ace
  doc: Creates an additional output file in ACeDB format.
  type: File?
  outputBinding:
    glob: $(inputs.in_ace)
- id: out_poly
  doc: "Creates an output file listing only potentially polymorphic simple\nrepeats."
  type: File?
  outputBinding:
    glob: $(inputs.in_poly)
- id: out_shows_alignments_align
  doc: Shows the alignments in a .align output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_shows_alignments_align)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/repeatmasker:4.1.1--pl526_1
cwlVersion: v1.1
baseCommand:
- ProcessRepeats
