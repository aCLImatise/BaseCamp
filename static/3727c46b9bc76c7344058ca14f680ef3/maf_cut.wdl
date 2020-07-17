version 1.0

task MafCut {
  input {
    String chr_n
  }
  command <<<
    maf-cut \
      ~{chr_n}
  >>>
  parameter_meta {
    chr_n: ""
  }
}