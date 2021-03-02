version 1.0

task SnpSiftIntIdx {
  input {
    Int? input_offset_coordinates
    Boolean? genomic_intervals_command
    String? jar
    String java
    String int_id_x
    File file_dot_vcf
  }
  command <<<
    SnpSift intIdx \
      ~{java} \
      ~{int_id_x} \
      ~{file_dot_vcf} \
      ~{if defined(input_offset_coordinates) then ("-if " +  '"' + input_offset_coordinates + '"') else ""} \
      ~{if (genomic_intervals_command) then "-i" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_offset_coordinates: ": Input offset. Default 0 (i.e. zero-based coordinates)."
    genomic_intervals_command: ": Genomic intervals in command line."
    jar: ""
    java: ""
    int_id_x: ""
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}