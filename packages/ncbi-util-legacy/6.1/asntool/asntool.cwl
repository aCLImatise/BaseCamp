class: CommandLineTool
id: asntool.cwl
inputs:
- id: in_asn_module_file
  doc: ASN.1 Module File [File In]
  type: boolean
  inputBinding:
    prefix: -m
- id: in_asn_module_file_optional
  doc: ASN.1 Module File [File Out]  Optional
  type: File
  inputBinding:
    prefix: -f
- id: in_xml_dtd_file
  doc: "XML DTD File\n(\"m\" to print each module to a separate file) [File Out] \
    \ Optional"
  type: File
  inputBinding:
    prefix: -X
- id: in_asn_tree_dump
  doc: ASN.1 Tree Dump File [File Out]  Optional
  type: File
  inputBinding:
    prefix: -T
- id: in_var_4
  doc: Print Value File [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -v
- id: in_var_5
  doc: Print Value File [File Out]  Optional
  type: File
  inputBinding:
    prefix: -p
- id: in_xml_data_file
  doc: XML Data File [File Out]  Optional
  type: File
  inputBinding:
    prefix: -x
- id: in_binary_value_file_type
  doc: Binary Value File (type required) [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -d
- id: in_binary_value_type
  doc: Binary Value Type [String]  Optional
  type: boolean
  inputBinding:
    prefix: -t
- id: in_binary_value_file_optional
  doc: Binary Value File [File Out]  Optional
  type: File
  inputBinding:
    prefix: -e
- id: in_header_file_optional
  doc: Header File [File Out]  Optional
  type: File
  inputBinding:
    prefix: -o
- id: in_loader_file_optional
  doc: Loader File [File Out]  Optional
  type: File
  inputBinding:
    prefix: -l
- id: in_buffer_size_optionaldefault
  doc: "Buffer Size [Integer]  Optional\ndefault = 1024\nrange from 512 to 10000"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_word_length_maximum
  doc: "Word length maximum for #defines [Integer]  Optional\ndefault = 31\nrange\
    \ from 31 to 128"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_fix_nonprinting_characters
  doc: "Fix Non-Printing Characters\n0 - Replace with #, post ERROR\n1 - Replace with\
    \ # silently\n2 - Pass through silently\n3 - Replace with #, post FATAL"
  type: boolean
  inputBinding:
    prefix: -F
- id: in_utf_input_conversion
  doc: "UTF8 Input Conversion\n0 - Convert silently\n1 - Convert, post WARNING first\
    \ time\n2 - Convert, post WARNING each time\n3 - Do not convert"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_utf_output_conversion
  doc: "UTF8 Output Conversion\n0 - Convert silently\n1 - Convert, post WARNING first\
    \ time\n2 - Convert, post WARNING each time\n3 - Do not convert"
  type: boolean
  inputBinding:
    prefix: -U
- id: in_generate_object_loader
  doc: "Generate object loader .c and .h files,\nif used, see below parameters: [T/F]\
    \  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -G
- id: in_asn_module_filenames
  doc: "ASN.1 module filenames, comma separated used for external refs from the 'm',\n\
    but no other action taken [File In]  Optional"
  type: boolean
  inputBinding:
    prefix: -M
- id: in_base_filename_optional
  doc: Base for filename, without extensions, for generated objects and code [File
    Out]  Optional
  type: File
  inputBinding:
    prefix: -B
- id: in_code_generation_debugging
  doc: "During code generation, debugging level\n0 - No debugging\n1 - Shallow debugging\n\
    2 - Deep"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_debugging_filename_optionaldefault
  doc: "Debugging filename [File Out]  Optional\ndefault = stderr"
  type: File
  inputBinding:
    prefix: -S
- id: in_generated_add_include
  doc: 'In generated .c, add #include to this filename [String]  Optional'
  type: boolean
  inputBinding:
    prefix: -I
- id: in_bit_twiddle_optional
  doc: "Bit twiddle for optional zero value base slots [T/F]  Optional\ndefault =\
    \ F"
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_generated_forces_name
  doc: 'In generated .c, forces name of #included asn header [String]  Optional'
  type: boolean
  inputBinding:
    prefix: -K
- id: in_register_type_object
  doc: Register type with object manager [String]  Optional
  type: boolean
  inputBinding:
    prefix: -J
- id: in_label_registered_type
  doc: Label for registered type [String]  Optional
  type: boolean
  inputBinding:
    prefix: -L
- id: in_xml_module_prefix
  doc: "XML module prefix for DOCTYPE [String]  Optional\ndefault ="
  type: boolean
  inputBinding:
    prefix: -P
- id: in_force_choice_use
  doc: "Force choice to use structure instead of ValNodePtr [T/F]  Optional\ndefault\
    \ = F"
  type: boolean
  inputBinding:
    prefix: -V
- id: in_use_quoted_form
  doc: "Use quoted syntax form for generated include files [T/F]  Optional\ndefault\
    \ = F\n"
  type: boolean
  inputBinding:
    prefix: -Q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_asn_module_file_optional
  doc: ASN.1 Module File [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_asn_module_file_optional)
- id: out_xml_dtd_file
  doc: "XML DTD File\n(\"m\" to print each module to a separate file) [File Out] \
    \ Optional"
  type: File
  outputBinding:
    glob: $(inputs.in_xml_dtd_file)
- id: out_asn_tree_dump
  doc: ASN.1 Tree Dump File [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_asn_tree_dump)
- id: out_var_5
  doc: Print Value File [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_var_5)
- id: out_xml_data_file
  doc: XML Data File [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_xml_data_file)
- id: out_binary_value_file_optional
  doc: Binary Value File [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_binary_value_file_optional)
- id: out_header_file_optional
  doc: Header File [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_header_file_optional)
- id: out_loader_file_optional
  doc: Loader File [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_loader_file_optional)
- id: out_base_filename_optional
  doc: Base for filename, without extensions, for generated objects and code [File
    Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_base_filename_optional)
- id: out_debugging_filename_optionaldefault
  doc: "Debugging filename [File Out]  Optional\ndefault = stderr"
  type: File
  outputBinding:
    glob: $(inputs.in_debugging_filename_optionaldefault)
cwlVersion: v1.1
baseCommand:
- asntool
