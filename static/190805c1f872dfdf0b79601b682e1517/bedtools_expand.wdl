version 1.0

task BedtoolsExpand {
  input {
    Boolean? input_file_assumes
    Boolean? specify_column_based
    String? cols
  }
  command <<<
    bedtools expand \
      ~{cols} \
      ~{if (input_file_assumes) then "-i" else ""} \
      ~{if (specify_column_based) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    input_file_assumes: "Input file. Assumes \\\"stdin\\\" if omitted."
    specify_column_based: "Specify the column (1-based) that should be summarized.\\n- Required."
    cols: ""
  }
  output {
    File out_stdout = stdout()
  }
}