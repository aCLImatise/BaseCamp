version 1.0

task Asntool {
  input {
    Boolean? asn_module_file
    File? asn_module_file_optional
    File? xml_dtd_file
    File? asn_tree_dump
    Boolean? var_4
    File? var_5
    File? xml_data_file
    Boolean? binary_value_file_type
    Boolean? binary_value_type
    File? binary_value_file_optional
    File? header_file_optional
    File? loader_file_optional
    Boolean? buffer_size_optionaldefault
    Boolean? word_length_maximum
    Boolean? fix_nonprinting_characters
    Boolean? utf_input_conversion
    Boolean? utf_output_conversion
    Boolean? generate_object_loader
    Boolean? asn_module_filenames
    File? base_filename_optional
    Boolean? code_generation_debugging
    File? debugging_filename_optionaldefault
    Boolean? generated_c_add
    Boolean? bit_twiddle_optionaldefault
    Boolean? generated_forces_name
    Boolean? register_type_optional
    Boolean? label_registered_optional
    Boolean? xml_module_prefix
    Boolean? force_choice_use
    Boolean? use_quoted_form
  }
  command <<<
    asntool \
      ~{if (asn_module_file) then "-m" else ""} \
      ~{if (asn_module_file_optional) then "-f" else ""} \
      ~{if (xml_dtd_file) then "-X" else ""} \
      ~{if (asn_tree_dump) then "-T" else ""} \
      ~{if (var_4) then "-v" else ""} \
      ~{if (var_5) then "-p" else ""} \
      ~{if (xml_data_file) then "-x" else ""} \
      ~{if (binary_value_file_type) then "-d" else ""} \
      ~{if (binary_value_type) then "-t" else ""} \
      ~{if (binary_value_file_optional) then "-e" else ""} \
      ~{if (header_file_optional) then "-o" else ""} \
      ~{if (loader_file_optional) then "-l" else ""} \
      ~{if (buffer_size_optionaldefault) then "-b" else ""} \
      ~{if (word_length_maximum) then "-w" else ""} \
      ~{if (fix_nonprinting_characters) then "-F" else ""} \
      ~{if (utf_input_conversion) then "-N" else ""} \
      ~{if (utf_output_conversion) then "-U" else ""} \
      ~{if (generate_object_loader) then "-G" else ""} \
      ~{if (asn_module_filenames) then "-M" else ""} \
      ~{if (base_filename_optional) then "-B" else ""} \
      ~{if (code_generation_debugging) then "-D" else ""} \
      ~{if (debugging_filename_optionaldefault) then "-S" else ""} \
      ~{if (generated_c_add) then "-I" else ""} \
      ~{if (bit_twiddle_optionaldefault) then "-Z" else ""} \
      ~{if (generated_forces_name) then "-K" else ""} \
      ~{if (register_type_optional) then "-J" else ""} \
      ~{if (label_registered_optional) then "-L" else ""} \
      ~{if (xml_module_prefix) then "-P" else ""} \
      ~{if (force_choice_use) then "-V" else ""} \
      ~{if (use_quoted_form) then "-Q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    asn_module_file: "ASN.1 Module File [File In]"
    asn_module_file_optional: "ASN.1 Module File [File Out]  Optional"
    xml_dtd_file: "XML DTD File\\n(\\\"m\\\" to print each module to a separate file) [File Out]  Optional"
    asn_tree_dump: "ASN.1 Tree Dump File [File Out]  Optional"
    var_4: "Print Value File [File In]  Optional"
    var_5: "Print Value File [File Out]  Optional"
    xml_data_file: "XML Data File [File Out]  Optional"
    binary_value_file_type: "Binary Value File (type required) [File In]  Optional"
    binary_value_type: "Binary Value Type [String]  Optional"
    binary_value_file_optional: "Binary Value File [File Out]  Optional"
    header_file_optional: "Header File [File Out]  Optional"
    loader_file_optional: "Loader File [File Out]  Optional"
    buffer_size_optionaldefault: "Buffer Size [Integer]  Optional\\ndefault = 1024\\nrange from 512 to 10000"
    word_length_maximum: "Word length maximum for #defines [Integer]  Optional\\ndefault = 31\\nrange from 31 to 128"
    fix_nonprinting_characters: "Fix Non-Printing Characters\\n0 - Replace with #, post ERROR\\n1 - Replace with # silently\\n2 - Pass through silently\\n3 - Replace with #, post FATAL"
    utf_input_conversion: "UTF8 Input Conversion\\n0 - Convert silently\\n1 - Convert, post WARNING first time\\n2 - Convert, post WARNING each time\\n3 - Do not convert"
    utf_output_conversion: "UTF8 Output Conversion\\n0 - Convert silently\\n1 - Convert, post WARNING first time\\n2 - Convert, post WARNING each time\\n3 - Do not convert"
    generate_object_loader: "Generate object loader .c and .h files,\\nif used, see below parameters: [T/F]  Optional\\ndefault = F"
    asn_module_filenames: "ASN.1 module filenames, comma separated used for external refs from the 'm',\\nbut no other action taken [File In]  Optional"
    base_filename_optional: "Base for filename, without extensions, for generated objects and code [File Out]  Optional"
    code_generation_debugging: "During code generation, debugging level\\n0 - No debugging\\n1 - Shallow debugging\\n2 - Deep"
    debugging_filename_optionaldefault: "Debugging filename [File Out]  Optional\\ndefault = stderr"
    generated_c_add: "In generated .c, add #include to this filename [String]  Optional"
    bit_twiddle_optionaldefault: "Bit twiddle for optional zero value base slots [T/F]  Optional\\ndefault = F"
    generated_forces_name: "In generated .c, forces name of #included asn header [String]  Optional"
    register_type_optional: "Register type with object manager [String]  Optional"
    label_registered_optional: "Label for registered type [String]  Optional"
    xml_module_prefix: "XML module prefix for DOCTYPE [String]  Optional\\ndefault ="
    force_choice_use: "Force choice to use structure instead of ValNodePtr [T/F]  Optional\\ndefault = F"
    use_quoted_form: "Use quoted syntax form for generated include files [T/F]  Optional\\ndefault = F\\n"
  }
  output {
    File out_stdout = stdout()
    File out_asn_module_file_optional = "${in_asn_module_file_optional}"
    File out_xml_dtd_file = "${in_xml_dtd_file}"
    File out_asn_tree_dump = "${in_asn_tree_dump}"
    File out_var_5 = "${in_var_5}"
    File out_xml_data_file = "${in_xml_data_file}"
    File out_binary_value_file_optional = "${in_binary_value_file_optional}"
    File out_header_file_optional = "${in_header_file_optional}"
    File out_loader_file_optional = "${in_loader_file_optional}"
    File out_base_filename_optional = "${in_base_filename_optional}"
    File out_debugging_filename_optionaldefault = "${in_debugging_filename_optionaldefault}"
  }
}