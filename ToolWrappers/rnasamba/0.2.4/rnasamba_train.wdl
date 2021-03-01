version 1.0

task RnasambaTrain {
  input {
    Int? early_stopping
    Int? batch_size
    Int? epochs
    String? verbose
    String output_file
    String coding_file
    String noncoding_file
    String transcripts_dot
  }
  command <<<
    rnasamba train \
      ~{output_file} \
      ~{coding_file} \
      ~{noncoding_file} \
      ~{transcripts_dot} \
      ~{if defined(early_stopping) then ("--early_stopping " +  '"' + early_stopping + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(epochs) then ("--epochs " +  '"' + epochs + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    early_stopping: "number of epochs after lowest validation loss before\\nstopping training (a fraction of 0.1 of the training\\nset is set apart for validation and the model with the\\nlowest validation loss will be saved). (default: 0)"
    batch_size: "number of samples per gradient update. (default: 128)"
    epochs: "number of epochs to train the model. (default: 40)"
    verbose: "print the progress of the training. 0 = silent, 1 =\\ncurrent step, 2 = progress bar, 3 = one line per\\nepoch. (default: 0)\\n"
    output_file: "output HDF5 file containing weights of the newly\\ntrained RNAsamba network."
    coding_file: "input FASTA file containing sequences of protein-\\ncoding transcripts."
    noncoding_file: "input FASTA file containing sequences of noncoding"
    transcripts_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}