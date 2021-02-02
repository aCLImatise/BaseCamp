version 1.0

task DeepacExplainTransfac2IC {
  input {
    File? in_file
    String? train
    File? out_file
  }
  command <<<
    deepac explain transfac2IC \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if defined(train) then ("--train " +  '"' + train + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""}
  >>>
  parameter_meta {
    in_file: "File containing all filter motifs in transfac format"
    train: "Training data set (.npy) to normalize for GC-content"
    out_file: "Name of the output file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}