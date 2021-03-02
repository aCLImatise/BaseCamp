class: CommandLineTool
id: bax2bam.cwl
inputs:
- id: in_xml
  doc: DataSet XML file containing a list of movie names
  type: File?
  inputBinding:
    prefix: --xml
- id: in_fof_n
  doc: File-of-file-names containing a list of input files
  type: File?
  inputBinding:
    prefix: --fofn
- id: in_prefix_output_filenames
  doc: "Prefix of output filenames. Movie name will be used if\nno prefix provided"
  type: string?
  inputBinding:
    prefix: -o
- id: in_output_xml
  doc: "Explicit output XML name. If none provided via this arg,\nbax2bam will use\
    \ -o prefix (<prefix>.dataset.xml). If\nthat is not specified either, the output\
    \ XML filename\nwill be <moviename>.dataset.xml"
  type: File?
  inputBinding:
    prefix: --output-xml
- id: in_sub_read
  doc: Output subreads (default)
  type: boolean?
  inputBinding:
    prefix: --subread
- id: in_hq_region
  doc: Output HQ regions
  type: boolean?
  inputBinding:
    prefix: --hqregion
- id: in_polymerase_read
  doc: Output full polymerase read
  type: boolean?
  inputBinding:
    prefix: --polymeraseread
- id: in_ccs
  doc: Output CCS sequences (requires ccs.h5 input)
  type: boolean?
  inputBinding:
    prefix: --ccs
- id: in_pulse_features
  doc: "Comma-separated list of desired pulse features, using\nthe names listed above."
  type: string?
  inputBinding:
    prefix: --pulsefeatures
- id: in_lossless_frames
  doc: "Store full, 16-bit IPD/PulseWidth data, instead of\n(default) downsampled,\
    \ 8-bit encoding."
  type: boolean?
  inputBinding:
    prefix: --losslessframes
- id: in_internal
  doc: "Output BAMs in internal mode. Currently this indicates\nthat non-sequencing\
    \ ZMWs should be included in the\noutput scraps BAM file, if applicable."
  type: File?
  inputBinding:
    prefix: --internal
- id: in_allow_unrecognized_chemistry_triple
  doc: "By default, bax2bam only allows the conversion of files\nwith chemistries\
    \ that are supported in SMRT Analysis 3.\nSet this flag to disable the strict\
    \ check and allow\ngeneration of BAM files containing legacy chemistries.\n"
  type: boolean?
  inputBinding:
    prefix: --allowUnrecognizedChemistryTriple
- id: in_deletion_qv
  doc: dq        Y
  type: string
  inputBinding:
    position: 0
- id: in_deletion_tag
  doc: dt        Y
  type: string
  inputBinding:
    position: 1
- id: in_insertion_qv
  doc: iq        Y
  type: string
  inputBinding:
    position: 2
- id: in_ipd
  doc: ip        Y
  type: string
  inputBinding:
    position: 3
- id: in_pulse_width
  doc: pw        Y*
  type: string
  inputBinding:
    position: 4
- id: in_merge_qv
  doc: mq        Y
  type: string
  inputBinding:
    position: 5
- id: in_substitution_qv
  doc: sq        Y
  type: string
  inputBinding:
    position: 6
- id: in_substitution_tag
  doc: st        N
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_xml
  doc: "Explicit output XML name. If none provided via this arg,\nbax2bam will use\
    \ -o prefix (<prefix>.dataset.xml). If\nthat is not specified either, the output\
    \ XML filename\nwill be <moviename>.dataset.xml"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_xml)
- id: out_internal
  doc: "Output BAMs in internal mode. Currently this indicates\nthat non-sequencing\
    \ ZMWs should be included in the\noutput scraps BAM file, if applicable."
  type: File?
  outputBinding:
    glob: $(inputs.in_internal)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bax2bam:0.0.11--0
cwlVersion: v1.1
baseCommand:
- bax2bam
