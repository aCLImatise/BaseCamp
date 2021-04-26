version 1.0

task TfrHdf5py {
  input {
    String data_dir
    Int hdf_five_file
  }
  command <<<
    tfr_hdf5_py \
      ~{data_dir} \
      ~{hdf_five_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    data_dir: ""
    hdf_five_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}