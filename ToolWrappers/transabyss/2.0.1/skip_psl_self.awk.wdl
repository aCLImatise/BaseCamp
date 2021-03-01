version 1.0

task SkipPslSelfawk {
  input {
    String? val_set_variable
    String? use_sep_field
    File? read_program_file
    String awk
    String? awk_program
    File? var_file
  }
  command <<<
    skip_psl_self_awk \
      ~{awk} \
      ~{awk_program} \
      ~{var_file} \
      ~{if defined(val_set_variable) then ("-v " +  '"' + val_set_variable + '"') else ""} \
      ~{if defined(use_sep_field) then ("-F " +  '"' + use_sep_field + '"') else ""} \
      ~{if defined(read_program_file) then ("-f " +  '"' + read_program_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    val_set_variable: "=VAL      Set variable"
    use_sep_field: "Use SEP as field separator"
    read_program_file: "Read program from FILE"
    awk: ""
    awk_program: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}