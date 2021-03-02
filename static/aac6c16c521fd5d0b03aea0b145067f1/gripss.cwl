class: CommandLineTool
id: gripss.cwl
inputs:
- id: in_breakpoint_p_on
  doc: "Paired breakpoint pon\nbedpe file"
  type: File?
  inputBinding:
    prefix: -breakpoint_pon
- id: in_hard_max_normal_absolute_support
  doc: "Hard max normal\nabsolute support [3]"
  type: long?
  inputBinding:
    prefix: -hard_max_normal_absolute_support
- id: in_hard_max_normal_relative_support
  doc: "Hard max normal\nrelative support [0.06]"
  type: long?
  inputBinding:
    prefix: -hard_max_normal_relative_support
- id: in_hard_min_tumor_qual
  doc: "Hard min tumor qual\n[100]"
  type: long?
  inputBinding:
    prefix: -hard_min_tumor_qual
- id: in_input_vcf
  doc: Path to GRIDSS VCF
  type: File?
  inputBinding:
    prefix: -input_vcf
- id: in_max_in_exact_hom_length_short_del
  doc: "Max inexact homology\nlength short del [5]"
  type: long?
  inputBinding:
    prefix: -max_inexact_hom_length_short_del
- id: in_max_short_strand_bias
  doc: "Max short strand bias\n[0.95]"
  type: long?
  inputBinding:
    prefix: -max_short_strand_bias
- id: in_min_length
  doc: Min length [32]
  type: long?
  inputBinding:
    prefix: -min_length
- id: in_min_normal_coverage
  doc: Min normal coverage [8]
  type: long?
  inputBinding:
    prefix: -min_normal_coverage
- id: in_min_qual_break_end
  doc: "Min qual break end\n[1000]"
  type: long?
  inputBinding:
    prefix: -min_qual_break_end
- id: in_min_qual_break_point
  doc: "Min qual break point\n[400]"
  type: long?
  inputBinding:
    prefix: -min_qual_break_point
- id: in_min_qual_rescue_mobile_element_insertion
  doc: "Min qual rescue mobile\nelement insertions\n[1000]"
  type: long?
  inputBinding:
    prefix: -min_qual_rescue_mobile_element_insertion
- id: in_min_tumor_af
  doc: "Min tumor allelic\nfrequency [0.005]"
  type: long?
  inputBinding:
    prefix: -min_tumor_af
- id: in_output_vcf
  doc: Path to output VCF
  type: File?
  inputBinding:
    prefix: -output_vcf
- id: in_ref_genome
  doc: Ref genome
  type: string?
  inputBinding:
    prefix: -ref_genome
- id: in_reference
  doc: "Optional name of\nreference sample"
  type: string?
  inputBinding:
    prefix: -reference
- id: in_soft_max_normal_relative_support
  doc: "Soft max normal\nrelative support [0.03]"
  type: long?
  inputBinding:
    prefix: -soft_max_normal_relative_support
- id: in_tumor
  doc: Name of tumor sample
  type: string?
  inputBinding:
    prefix: -tumor
- id: in_grips_s
  doc: -breakend_pon <arg>                               Single breakend pon bed
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: -breakpoint_hotspot <arg>                         Paired breakpoint
  type: File
  inputBinding:
    position: 1
- id: in_input
  doc: -max_hom_length_short_inv <arg>                   Max homology length
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf
  doc: Path to output VCF
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hmftools-gripss:1.9--0
cwlVersion: v1.1
baseCommand:
- gripss
