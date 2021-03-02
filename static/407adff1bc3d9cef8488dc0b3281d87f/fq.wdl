version 1.0

task Fq {
  input {
    Boolean? quiet
    Int? ref
    Boolean? hist
    File file_dot_fq_vertical_line_file_dot_fq_do_tgz_dot_dot_dot
  }
  command <<<
    fq \
      ~{file_dot_fq_vertical_line_file_dot_fq_do_tgz_dot_dot_dot} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if (hist) then "--hist" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "!        Quiet mode: no progress output (default '0')."
    ref: "Reference FASTA file OR size in bp (default '')."
    hist: "Length histogram (NO LONGER SUPPORTED) (default '0')."
    file_dot_fq_vertical_line_file_dot_fq_do_tgz_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}