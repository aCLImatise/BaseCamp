version 1.0

task StripSamQualawk {
  input {
    String? val_set_variable
    String? use_sep_field
    File? read_program_file
    String? e
    String awk
    String? awk_program
    File? file
  }
  command <<<
    strip_sam_qual_awk \
      ~{awk} \
      ~{awk_program} \
      ~{file} \
      ~{if defined(val_set_variable) then ("-v " +  '"' + val_set_variable + '"') else ""} \
      ~{if defined(use_sep_field) then ("-F " +  '"' + use_sep_field + '"') else ""} \
      ~{if defined(read_program_file) then ("-f " +  '"' + read_program_file + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  parameter_meta {
    val_set_variable: "=VAL      Set variable"
    use_sep_field: "Use SEP as field separator"
    read_program_file: "Read program from FILE"
    e: ""
    awk: ""
    awk_program: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}