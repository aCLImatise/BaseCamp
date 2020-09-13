version 1.0

task Mafcut {
  input {
    String chr_n
  }
  command <<<
    maf_cut \
      ~{chr_n}
  >>>
  parameter_meta {
    chr_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}