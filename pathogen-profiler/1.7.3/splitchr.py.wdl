version 1.0

task Splitchrpy {
  input {
    File? bed
    Boolean? reformat
  }
  command <<<
    splitchr_py \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if (reformat) then "--reformat" else ""}
  >>>
  parameter_meta {
    bed: "Bed file (default: None)"
    reformat: "Bed file (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}