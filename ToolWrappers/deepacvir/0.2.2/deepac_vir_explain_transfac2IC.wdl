version 1.0

task DeepacvirExplainTransfac2IC {
  input {
    File? in_file
    String? train
    File? out_file
    String deep_ac
    String explain
    Int transfac_two_ic
  }
  command <<<
    deepac_vir explain transfac2IC \
      ~{deep_ac} \
      ~{explain} \
      ~{transfac_two_ic} \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if defined(train) then ("--train " +  '"' + train + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacvir:0.2.2--py_0"
  }
  parameter_meta {
    in_file: "File containing all filter motifs in transfac format"
    train: "Training data set (.npy) to normalize for GC-content"
    out_file: "Name of the output file\\n"
    deep_ac: ""
    explain: ""
    transfac_two_ic: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}