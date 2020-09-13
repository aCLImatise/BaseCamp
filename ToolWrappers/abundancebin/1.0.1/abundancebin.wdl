version 1.0

task Abundancebin {
  input {
    Boolean? bin_num
    Boolean? recursive_classification
  }
  command <<<
    abundancebin \
      ~{if (bin_num) then "-bin_num" else ""} \
      ~{if (recursive_classification) then "-RECURSIVE_CLASSIFICATION" else ""}
  >>>
  parameter_meta {
    bin_num: "(bin number)"
    recursive_classification: "]"
  }
  output {
    File out_stdout = stdout()
  }
}