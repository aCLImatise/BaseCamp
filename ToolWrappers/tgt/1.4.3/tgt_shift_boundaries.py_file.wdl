version 1.0

task TgtshiftboundariespyFile {
  input {
    String? o
    String? f
    String? e
    String tgt_shift_boundaries_do_tpy
  }
  command <<<
    tgt_shift_boundaries_py file \
      ~{tgt_shift_boundaries_do_tpy} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    f: ""
    e: ""
    tgt_shift_boundaries_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}