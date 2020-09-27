version 1.0

task StripSamSeqQualNoselfawk {
  input {
    File? val_set_sep
    String awk
    String? awk_program
    File? file
  }
  command <<<
    strip_sam_seq_qual_noself_awk \
      ~{awk} \
      ~{awk_program} \
      ~{file} \
      ~{if defined(val_set_sep) then ("-v " +  '"' + val_set_sep + '"') else ""}
  >>>
  parameter_meta {
    val_set_sep: "=VAL      Set variable\\n-F SEP          Use SEP as field separator\\n-f FILE         Read program from FILE\\n-e AWK_PROGRAM\\n"
    awk: ""
    awk_program: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}