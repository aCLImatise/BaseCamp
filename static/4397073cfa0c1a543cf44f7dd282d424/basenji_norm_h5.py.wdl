version 1.0

task BasenjiNormH5py {
  input {
    Int? uniformly_sample_seq
    Int? mc
    Directory? output_directory_test
    Boolean? rc
    Float? sample_sequences
    Boolean? save
    Int? shifts
    Boolean? train
    Boolean? process_validation_set
    String params_file
    String model_file
    Int test_hdf_five_file
  }
  command <<<
    basenji_norm_h5_py \
      ~{params_file} \
      ~{model_file} \
      ~{test_hdf_five_file} \
      ~{if defined(uniformly_sample_seq) then ("-l " +  '"' + uniformly_sample_seq + '"') else ""} \
      ~{if defined(mc) then ("--mc " +  '"' + mc + '"') else ""} \
      ~{if defined(output_directory_test) then ("-o " +  '"' + output_directory_test + '"') else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if defined(sample_sequences) then ("-s " +  '"' + sample_sequences + '"') else ""} \
      ~{if (save) then "--save" else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if (train) then "--train" else ""} \
      ~{if (process_validation_set) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    uniformly_sample_seq: "Uniformly sample across the seq length [Default: 1]"
    mc: "Monte carlo test iterations [Default: 0]"
    output_directory_test: "Output directory for test statistics [Default: test_out]"
    rc: "Average the fwd and rc predictions [Default: False]"
    sample_sequences: "Sample sequences [Default: 1.0]"
    save: "Save predictions to HDF5. [Default: False]"
    shifts: "Ensemble prediction shifts [Default: 0]"
    train: "Process the training set [Default: False]"
    process_validation_set: "Process the validation set [Default: False]"
    params_file: ""
    model_file: ""
    test_hdf_five_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_test = "${in_output_directory_test}"
  }
}