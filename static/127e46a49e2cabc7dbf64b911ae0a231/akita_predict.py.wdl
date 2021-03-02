version 1.0

task AkitaPredictpy {
  input {
    File? bed_file_describing
    Int? mc
    Directory? output_directory_defaulttestout
    Boolean? rc
    Int? shifts
    File? file_specifying_indexes
    String? tfr
    String genomefile_chromosome_length
    String format
    String _splitsplitlabel_dataset
  }
  command <<<
    akita_predict_py \
      ~{genomefile_chromosome_length} \
      ~{format} \
      ~{_splitsplitlabel_dataset} \
      ~{if defined(bed_file_describing) then ("-b " +  '"' + bed_file_describing + '"') else ""} \
      ~{if defined(mc) then ("--mc " +  '"' + mc + '"') else ""} \
      ~{if defined(output_directory_defaulttestout) then ("-o " +  '"' + output_directory_defaulttestout + '"') else ""} \
      ~{if (rc) then "--rc" else ""} \
      ~{if defined(shifts) then ("--shifts " +  '"' + shifts + '"') else ""} \
      ~{if defined(file_specifying_indexes) then ("-t " +  '"' + file_specifying_indexes + '"') else ""} \
      ~{if defined(tfr) then ("--tfr " +  '"' + tfr + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    bed_file_describing: "BED file describing regions so we can output BigWig"
    mc: "Monte carlo test iterations [Default: 0]"
    output_directory_defaulttestout: "Output directory for test statistics [Default:\\ntest_out]"
    rc: "Average the fwd and rc predictions [Default: False]"
    shifts: "Ensemble prediction shifts [Default: 0]"
    file_specifying_indexes: "File specifying target indexes and labels in table"
    tfr: "TFR pattern string appended to data_dir/tfrecords for\\nsubsetting [Default: none]\\n"
    genomefile_chromosome_length: "-g GENOME_FILE       Chromosome length information [Default: /usr/local/shar"
    format: "--ti=TRACK_INDEXES   Comma-separated list of target indexes to output BigWig"
    _splitsplitlabel_dataset: "--split=SPLIT_LABEL  Dataset split label for eg TFR pattern [Default: test]"
  }
  output {
    File out_stdout = stdout()
    File out_bed_file_describing = "${in_bed_file_describing}"
    Directory out_output_directory_defaulttestout = "${in_output_directory_defaulttestout}"
  }
}