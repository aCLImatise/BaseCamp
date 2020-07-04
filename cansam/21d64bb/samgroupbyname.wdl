version 1.0

task Samgroupbyname {
  input {
    Boolean? write_output_bam
    File? write_file_output
    Boolean? emit_pairs_only
    Boolean? display_file_information
    Boolean? bpv
    File? file
  }
  command <<<
    samgroupbyname \
      ~{file} \
      ~{true="-b" false="" write_output_bam} \
      ~{if defined(write_file_output) then ("-o " +  '"' + write_file_output + '"') else ""} \
      ~{true="-p" false="" emit_pairs_only} \
      ~{true="-v" false="" display_file_information} \
      ~{true="-bpv" false="" bpv}
  >>>
  parameter_meta {
    write_output_bam: "Write output in BAM format"
    write_file_output: "Write to FILE rather than standard output"
    emit_pairs_only: "Emit pairs only, discarding any leftover singleton reads"
    display_file_information: "Display file information and statistics"
    bpv: ""
    file: ""
  }
}