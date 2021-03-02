version 1.0

task Wtpre {
  input {
    String? output_processed_reads
    File? force_overwrite_output
    Boolean? keep_subreads_one
    Int? jack_knife_read
    Int? clip_bases_ends
    Int? change_read_name
  }
  command <<<
    wtpre \
      ~{if defined(output_processed_reads) then ("-o " +  '"' + output_processed_reads + '"') else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if (keep_subreads_one) then "-L" else ""} \
      ~{if defined(jack_knife_read) then ("-J " +  '"' + jack_knife_read + '"') else ""} \
      ~{if defined(clip_bases_ends) then ("-c " +  '"' + clip_bases_ends + '"') else ""} \
      ~{if defined(change_read_name) then ("-p " +  '"' + change_read_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_processed_reads: "Output of processed reads, [-]"
    force_overwrite_output: "Force overwrite output file"
    keep_subreads_one: "Keep all subreads in a well, default: the longest one"
    jack_knife_read: "Jack knife of read length, [0]"
    clip_bases_ends: "Clip <-c> bases at both ends, [0]"
    change_read_name: "Change the read name into {\\\"%s%012d\\\", <-p>}, [pb]"
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite_output = "${in_force_overwrite_output}"
  }
}