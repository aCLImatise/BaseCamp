version 1.0

task SplitchrpySize {
  input {
    Boolean? reformat
    String? bed
    String split_chr_do_tpy
    String fast_a
    Int size
  }
  command <<<
    splitchr_py size \
      ~{split_chr_do_tpy} \
      ~{fast_a} \
      ~{size} \
      ~{if (reformat) then "--reformat" else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reformat: ""
    bed: ""
    split_chr_do_tpy: ""
    fast_a: ""
    size: ""
  }
  output {
    File out_stdout = stdout()
  }
}