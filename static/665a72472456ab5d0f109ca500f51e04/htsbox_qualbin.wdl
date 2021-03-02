version 1.0

task HtsboxQualbin {
  input {
    Int? number_of_threads
    Int? number_records_buffer
    Int? number_of_bins
    Boolean? input_bam_file
    Boolean? output_uncompressed_force
    String qual_bin
    String in_dot_bam
  }
  command <<<
    htsbox qualbin \
      ~{qual_bin} \
      ~{in_dot_bam} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(number_records_buffer) then ("-n " +  '"' + number_records_buffer + '"') else ""} \
      ~{if defined(number_of_bins) then ("-m " +  '"' + number_of_bins + '"') else ""} \
      ~{if (input_bam_file) then "-b" else ""} \
      ~{if (output_uncompressed_force) then "-u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_threads: "number of threads [1]"
    number_records_buffer: "number of records in buffer [1000000]"
    number_of_bins: "number of bins (0, 1, 2, 3 or 7) [2]"
    input_bam_file: "the input is a BAM file"
    output_uncompressed_force: "output uncompressed BAM (force -b)"
    qual_bin: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}