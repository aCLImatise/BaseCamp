version 1.0

task BedtkFlt {
  input {
    Boolean? second_input_vcf
    Boolean? print_records_contained
    Boolean? print_nonsatisfying_records
    Int? window_size
    String loaded_dot_bed
    String streamed_dot_bed
  }
  command <<<
    bedtk flt \
      ~{loaded_dot_bed} \
      ~{streamed_dot_bed} \
      ~{if (second_input_vcf) then "-c" else ""} \
      ~{if (print_records_contained) then "-C" else ""} \
      ~{if (print_nonsatisfying_records) then "-v" else ""} \
      ~{if defined(window_size) then ("-w " +  '"' + window_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtk:0.0.r25.dirty--hed695b0_0"
  }
  parameter_meta {
    second_input_vcf: "the second input is VCF (force -f and clear -m)"
    print_records_contained: "print records contained in the union of <loaded.bed>"
    print_nonsatisfying_records: "print non-satisfying records"
    window_size: "window size [0]"
    loaded_dot_bed: ""
    streamed_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}