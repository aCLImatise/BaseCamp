version 1.0

task PvacseqBindingFilterOutputFile {
  input {
    String? b
    String pvac_seq
    String binding_filter
  }
  command <<<
    pvacseq binding_filter output_file \
      ~{pvac_seq} \
      ~{binding_filter} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    b: ""
    pvac_seq: ""
    binding_filter: ""
  }
  output {
    File out_stdout = stdout()
  }
}