class: CommandLineTool
id: pack200.cwl
inputs:
- id: in_repack
  doc: "repack or normalize a jar, suitable for\nsigning with jarsigner"
  type: boolean
  inputBinding:
    prefix: --repack
- id: in_no_gzip
  doc: "output a plain pack file, suitable to be\ncompressed with a file compression\
    \ utility"
  type: File
  inputBinding:
    prefix: --no-gzip
- id: in_gzip
  doc: "(default) post compress the pack output\nwith gzip"
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_strip_debug
  doc: "remove debugging attributes (SourceFile,\nLineNumberTable, LocalVariableTable\n\
    and LocalVariableTypeTable) while packing"
  type: boolean
  inputBinding:
    prefix: --strip-debug
- id: in_no_keep_file_order
  doc: do not transmit file ordering information
  type: boolean
  inputBinding:
    prefix: --no-keep-file-order
- id: in_keep_file_order
  doc: (default) preserve input file ordering
  type: boolean
  inputBinding:
    prefix: --keep-file-order
- id: in_limit_segment_sizes
  doc: '{N}, --segment-limit={N}      limit segment sizes (default unlimited)'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_packing_effort_default
  doc: '{N}, --effort={N}             packing effort (default N=5)'
  type: boolean
  inputBinding:
    prefix: -E
- id: in_transmit_deflate_falseor
  doc: "{h}, --deflate-hint={h}       transmit deflate hint: true, false,\nor keep\
    \ (default)"
  type: boolean
  inputBinding:
    prefix: -H
- id: in_transmit_modtimes_latest
  doc: '{V}, --modification-time={V}  transmit modtimes: latest or keep (default)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_transmit_elements_unchanged
  doc: '{F}, --pass-file={F}          transmit the given input element(s) unchanged'
  type: boolean
  inputBinding:
    prefix: -P
- id: in_unknown_attribute_action
  doc: "{a}, --unknown-attribute={a}  unknown attribute action: error, strip,\nor\
    \ pass (default)"
  type: boolean
  inputBinding:
    prefix: -U
- id: in_c
  doc: '{N}={L}, --class-attribute={N}={L}  (user-defined attribute)'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_var_13
  doc: '{N}={L}, --field-attribute={N}={L}  (user-defined attribute)'
  type: boolean
  inputBinding:
    prefix: -F
- id: in_var_14
  doc: '{N}={L}, --method-attribute={N}={L} (user-defined attribute)'
  type: boolean
  inputBinding:
    prefix: -M
- id: in_d
  doc: '{N}={L}, --code-attribute={N}={L}   (user-defined attribute)'
  type: boolean
  inputBinding:
    prefix: -D
- id: in_read_file_f
  doc: '{F}, --config-file={F}        read file F for Pack200.Packer properties'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_verbose
  doc: increase program verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: set verbosity to lowest level
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_output_given_log
  doc: "{F}, --log-file={F}           output to the given log file,\nor '-' for System.out"
  type: File
  inputBinding:
    prefix: -l
- id: in_pass_option_x
  doc: '{X}                           pass option X to underlying Java VM'
  type: boolean
  inputBinding:
    prefix: -J
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_gzip
  doc: "output a plain pack file, suitable to be\ncompressed with a file compression\
    \ utility"
  type: File
  outputBinding:
    glob: $(inputs.in_no_gzip)
- id: out_output_given_log
  doc: "{F}, --log-file={F}           output to the given log file,\nor '-' for System.out"
  type: File
  outputBinding:
    glob: $(inputs.in_output_given_log)
cwlVersion: v1.1
baseCommand:
- pack200
