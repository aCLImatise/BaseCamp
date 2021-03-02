version 1.0

task Ccconfig {
  input {
    Boolean? cc
    File? output_file
    Boolean? output_format
    Boolean? basename
    Boolean? inc_path
    Boolean? preprocess
    Boolean? compile_obj
    Boolean? compile_exe
    Boolean? c_ext
    Boolean? pp_ext
    Boolean? obj_ext
    Boolean? exe_ext
    Boolean? no_delete
    Boolean? no_run
    Boolean? quiet
    Boolean? no_status
    Boolean? debug
  }
  command <<<
    ccconfig \
      ~{if (cc) then "--cc" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if (basename) then "--basename" else ""} \
      ~{if (inc_path) then "--inc-path" else ""} \
      ~{if (preprocess) then "--preprocess" else ""} \
      ~{if (compile_obj) then "--compile-obj" else ""} \
      ~{if (compile_exe) then "--compile-exe" else ""} \
      ~{if (c_ext) then "--c-ext" else ""} \
      ~{if (pp_ext) then "--pp-ext" else ""} \
      ~{if (obj_ext) then "--obj-ext" else ""} \
      ~{if (exe_ext) then "--exe-ext" else ""} \
      ~{if (no_delete) then "--nodelete" else ""} \
      ~{if (no_run) then "--norun" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (no_status) then "--nostatus" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cc: "compiler   compiler executable to test\\ndefault: auto-determined"
    output_file: "file       output filename\\ndefault: output to stdout"
    output_format: "format     output format\\ndefault: dumper"
    basename: "name       basename of the temporary test files\\ndefault: _t_e_s_t"
    inc_path: "path       manually set compiler include path"
    preprocess: "rule       compiler rule for preprocessing"
    compile_obj: "rule       compiler rule for compiling objects"
    compile_exe: "rule       compiler rule for compiling executables"
    c_ext: "ext        extension of C source files"
    pp_ext: "ext        extension of preprocessor output files"
    obj_ext: "ext        extension of object files"
    exe_ext: "ext        extension of executable files"
    no_delete: "don't delete temporary files"
    no_run: "don't try to run executables"
    quiet: "don't display anything"
    no_status: "don't display status indicator"
    debug: "debug mode"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}