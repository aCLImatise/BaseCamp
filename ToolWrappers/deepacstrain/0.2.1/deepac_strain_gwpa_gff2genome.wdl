version 1.0

task DeepacstrainGwpaGff2genome {
  input {
    Int gff_three_dir
    String out_dir
  }
  command <<<
    deepac_strain gwpa gff2genome \
      ~{gff_three_dir} \
      ~{out_dir}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    gff_three_dir: "Input directory."
    out_dir: "Output directory."
  }
  output {
    File out_stdout = stdout()
  }
}