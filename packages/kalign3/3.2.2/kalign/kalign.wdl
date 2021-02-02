version 1.0

task Kalign {
  input {
    Boolean? format
    Boolean? reformat
    String? o
    File? i
  }
  command <<<
    kalign \
      ~{if (format) then "--format" else ""} \
      ~{if (reformat) then "--reformat" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    format: ": Output format. [Fasta]"
    reformat: ": Reformat existing alignment. [NA]"
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}