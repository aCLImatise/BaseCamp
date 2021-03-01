version 1.0

task Samgroupbyname {
  input {
    Boolean? write_output_bam
    File? write_standard_output
    Boolean? emit_pairs_discarding
    Boolean? display_file_information
    Boolean? bpv
    File? var_file
  }
  command <<<
    samgroupbyname \
      ~{var_file} \
      ~{if (write_output_bam) then "-b" else ""} \
      ~{if defined(write_standard_output) then ("-o " +  '"' + write_standard_output + '"') else ""} \
      ~{if (emit_pairs_discarding) then "-p" else ""} \
      ~{if (display_file_information) then "-v" else ""} \
      ~{if (bpv) then "-bpv" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_output_bam: "Write output in BAM format"
    write_standard_output: "Write to FILE rather than standard output"
    emit_pairs_discarding: "Emit pairs only, discarding any leftover singleton reads"
    display_file_information: "Display file information and statistics"
    bpv: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_standard_output = "${in_write_standard_output}"
  }
}