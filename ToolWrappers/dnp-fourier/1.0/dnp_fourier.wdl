version 1.0

task Dnpfourier {
  input {
    String? sequence
    String? table
    Int? of_window_smoothing
    Int? normalisation_base_normalization
    Int? output_table_normalization
  }
  command <<<
    dnp_fourier \
      ~{if defined(sequence) then ("-f " +  '"' + sequence + '"') else ""} \
      ~{if defined(table) then ("-o " +  '"' + table + '"') else ""} \
      ~{if defined(of_window_smoothing) then ("-l " +  '"' + of_window_smoothing + '"') else ""} \
      ~{if defined(normalisation_base_normalization) then ("-n " +  '"' + normalisation_base_normalization + '"') else ""} \
      ~{if defined(output_table_normalization) then ("-t " +  '"' + output_table_normalization + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequence: "sequence"
    table: "table"
    of_window_smoothing: "of window of smoothing"
    normalisation_base_normalization: "of normalisation:\\n0 base normalization\\n1 linear normalization\\n2 quadratic normalization"
    output_table_normalization: "of output table:\\n1 normalization\\n2 smoothing\\n3 Fourier transform\\nS.Hosid 2008 - 2018\\n"
  }
  output {
    File out_stdout = stdout()
  }
}