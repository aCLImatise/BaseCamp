version 1.0

task Obabel {
  input {
    Boolean? start_import_specified
    Boolean? end_import_molecule
    String? next_object_error
    String? the_output_gzip
    String? z_in
    String? to_translate_keywords
    String? this_help_text
    Boolean? h_xxx
    String? hall
    Int? version_number
    String? lists_plugin_classes
    File? multiple_output_files
    Boolean? var_12
    Boolean? var_13
    Boolean? i
    String? input_type
    String in_filename
    String? output_type
    String out_filename
  }
  command <<<
    obabel \
      ~{input_type} \
      ~{in_filename} \
      ~{output_type} \
      ~{out_filename} \
      ~{if (start_import_specified) then "-f" else ""} \
      ~{if (end_import_molecule) then "-l" else ""} \
      ~{if defined(next_object_error) then ("-e " +  '"' + next_object_error + '"') else ""} \
      ~{if defined(the_output_gzip) then ("-z " +  '"' + the_output_gzip + '"') else ""} \
      ~{if defined(z_in) then ("-zin " +  '"' + z_in + '"') else ""} \
      ~{if defined(to_translate_keywords) then ("-k " +  '"' + to_translate_keywords + '"') else ""} \
      ~{if defined(this_help_text) then ("-H " +  '"' + this_help_text + '"') else ""} \
      ~{if (h_xxx) then "-Hxxx" else ""} \
      ~{if defined(hall) then ("-Hall " +  '"' + hall + '"') else ""} \
      ~{if defined(version_number) then ("-V " +  '"' + version_number + '"') else ""} \
      ~{if defined(lists_plugin_classes) then ("-L " +  '"' + lists_plugin_classes + '"') else ""} \
      ~{if defined(multiple_output_files) then ("-m " +  '"' + multiple_output_files + '"') else ""} \
      ~{if (var_12) then "-O" else ""} \
      ~{if (var_13) then "-o" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    start_import_specified: "<#> Start import at molecule # specified"
    end_import_molecule: "<#> End import at molecule # specified"
    next_object_error: "with next object after error, if possible"
    the_output_gzip: "the output with gzip"
    z_in: "the input with gzip"
    to_translate_keywords: "to translate keywords"
    this_help_text: "this help text"
    h_xxx: "(xxx is file format ID e.g. -Hcml) gives format info"
    hall: "details of all formats"
    version_number: "version number"
    lists_plugin_classes: "Lists plugin classes of this category, e.g. <formats>\\nUse just -L for a list of plugin categories.\\nUse -L <ID> e.g. -L sdf for details of a format or other plugin."
    multiple_output_files: "multiple output files, to allow:\\nSplitting: e.g.        obabel infile.mol -O new.smi -m\\nputs each molecule into new1.smi new2.smi etc\\nBatch conversion: e.g. obabel *.mol -osmi -m\\nconverts each input file to a .smi file"
    var_12: ""
    var_13: ""
    i: ""
    input_type: ""
    in_filename: ""
    output_type: ""
    out_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}