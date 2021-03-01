version 1.0

task Abundancebin {
  input {
    Boolean? bin_num
  }
  command <<<
    abundancebin \
      ~{if (bin_num) then "-bin_num" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bin_num: "(bin number)"
  }
  output {
    File out_stdout = stdout()
  }
}