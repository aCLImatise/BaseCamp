version 1.0

task Splitchr.pySize {
  input {
    String? bed
    Boolean? reformat
    String split_chr_do_tpy
    String fast_a
    Int size
  }
  command <<<
    splitchr.py size \
      ~{split_chr_do_tpy} \
      ~{fast_a} \
      ~{size} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{true="--reformat" false="" reformat}
  >>>
  parameter_meta {
    bed: ""
    reformat: ""
    split_chr_do_tpy: ""
    fast_a: ""
    size: ""
  }
}