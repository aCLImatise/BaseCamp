version 1.0

task Hic2coolExtractnormsOutfile {
  input {
    Boolean? w
    Boolean? s
    Boolean? e
    Int hic_two_cool
    String extract_norms
    String in_file
    String outfile
  }
  command <<<
    hic2cool extract_norms outfile \
      ~{hic_two_cool} \
      ~{extract_norms} \
      ~{in_file} \
      ~{outfile} \
      ~{if (w) then "-w" else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if (e) then "-e" else ""}
  >>>
  parameter_meta {
    w: ""
    s: ""
    e: ""
    hic_two_cool: ""
    extract_norms: ""
    in_file: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}