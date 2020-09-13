version 1.0

task Samgroupbyname {
  input {
    Boolean? write_output_bam
    File? write_file_output
    Boolean? emit_pairs_reads
    Boolean? display_file_information
    Boolean? bpv
    File? file
  }
  command <<<
    samgroupbyname \
      ~{file} \
      ~{if (write_output_bam) then "-b" else ""} \
      ~{if defined(write_file_output) then ("-o " +  '"' + write_file_output + '"') else ""} \
      ~{if (emit_pairs_reads) then "-p" else ""} \
      ~{if (display_file_information) then "-v" else ""} \
      ~{if (bpv) then "-bpv" else ""}
  >>>
  parameter_meta {
    write_output_bam: "Write output in BAM format"
    write_file_output: "Write to FILE rather than standard output"
    emit_pairs_reads: "Emit pairs only, discarding any leftover singleton reads"
    display_file_information: "Display file information and statistics"
    bpv: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_file_output = "${in_write_file_output}"
  }
}