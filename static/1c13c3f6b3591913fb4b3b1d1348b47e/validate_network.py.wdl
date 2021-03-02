version 1.0

task ValidateNetworkpy {
  input {
    Boolean? no_bad
    Int? batch
    Boolean? no_transducer
    String model
    String hdf_file_containing
  }
  command <<<
    validate_network_py \
      ~{model} \
      ~{hdf_file_containing} \
      ~{if (no_bad) then "--no-bad" else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""} \
      ~{if (no_transducer) then "--no-transducer" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_bad: "Use bad events as a separate state (Default: --bad)\\n(default: True)"
    batch: "Batch size (number of chunks to run in parallel)\\n(default: 200)"
    no_transducer: "Model is a transducer (Default: --transducer)\\n(default: True)"
    model: "File to read model description from"
    hdf_file_containing: "HDF5 file containing chunks"
  }
  output {
    File out_stdout = stdout()
  }
}