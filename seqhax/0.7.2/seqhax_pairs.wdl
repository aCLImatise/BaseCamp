version 1.0

task SeqhaxPairs {
  input {
    Boolean? force_output_existing
    Int? minimum_length_read
    File? pair_first_mate
    File? pair_mate_output
    File? interleaved_pairsonly_output
    File? unpaired_read_output
    File? s
    File? b
    File? output_statistics_file
    File file
  }
  command <<<
    seqhax pairs \
      ~{file} \
      ~{if (force_output_existing) then "-f" else ""} \
      ~{if defined(minimum_length_read) then ("-l " +  '"' + minimum_length_read + '"') else ""} \
      ~{if defined(pair_first_mate) then ("-1 " +  '"' + pair_first_mate + '"') else ""} \
      ~{if defined(pair_mate_output) then ("-2 " +  '"' + pair_mate_output + '"') else ""} \
      ~{if defined(interleaved_pairsonly_output) then ("-p " +  '"' + interleaved_pairsonly_output + '"') else ""} \
      ~{if defined(unpaired_read_output) then ("-u " +  '"' + unpaired_read_output + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(output_statistics_file) then ("-y " +  '"' + output_statistics_file + '"') else ""}
  >>>
  parameter_meta {
    force_output_existing: "Force output to existing files."
    minimum_length_read: "Minimum length of each read. [default 1]"
    pair_first_mate: "Pair first mate output"
    pair_mate_output: "Pair second mate output"
    interleaved_pairsonly_output: "Interleaved pairs-only output"
    unpaired_read_output: "Unpaired read output"
    s: "\\\"Strict interleaved\\\" output, all reads"
    b: "\\\"Broken paired\\\" output, all reads"
    output_statistics_file: "Output statistics to FILE."
    file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_statistics_file = "${in_output_statistics_file}"
  }
}