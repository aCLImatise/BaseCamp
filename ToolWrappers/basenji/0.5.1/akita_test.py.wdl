version 1.0

task AkitaTestpy {
  input {
    String? a_i
    Int? head
    Int? mc
    Boolean? peaks
    Directory? output_directory_defaulttestout
    Boolean? rc
    Boolean? save
    Int? shifts
    File? file_specifying_indexes
    String? tfr
    String format
  }
  command <<<
    akita_test_py \
      ~{format} \
      ~{if defined(a_i) then ("--ai " +  '"' + a_i + '"') else ""} \
      ~{if defined(head) then ("--head " +  '"' + head + '"') else ""} \
      ~{if defined(mc) then ("--mc " +  '"' + mc + '"') else ""} \
      ~{if (peaks) then "--peaks" else ""} \
      ~{if defined(output_directory_defaulttestout) then ("-o " +  '"' + output_directory_defaulttestout + '"') else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if (save) then "--save" else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if defined(file_specifying_indexes) then ("-t " +  '"' + file_specifying_indexes + '"') else ""} \
      ~{if defined(tfr) then ("--tfr " +  '"' + tfr + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    a_i: "Comma-separated list of target indexes to make\\naccuracy scatter plots."
    head: "Parameters head to test [Default: 0]"
    mc: "Monte carlo test iterations [Default: 0]"
    peaks: "Compute expensive peak accuracy [Default: False]"
    output_directory_defaulttestout: "Output directory for test statistics [Default:\\ntest_out]"
    rc: "Average the fwd and rc predictions [Default: False]"
    save: "Save targets and predictions numpy arrays [Default:\\nFalse]"
    shifts: "Ensemble prediction shifts [Default: 0]"
    file_specifying_indexes: "File specifying target indexes and labels in table"
    tfr: "TFR pattern string appended to data_dir/tfrecords for\\nsubsetting [Default: none]\\n"
    format: "--split=SPLIT_LABEL   Dataset split label for eg TFR pattern [Default: test]"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_defaulttestout = "${in_output_directory_defaulttestout}"
  }
}