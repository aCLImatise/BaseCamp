version 1.0

task Wtpre {
  input {
    String? output_processed_reads
    Boolean? force_overwrite_output
    Boolean? keep_subreads_one
    Int? jack_knife_read
    Int? clip_c_bases
    String? change_read_name
  }
  command <<<
    wtpre \
      ~{if defined(output_processed_reads) then ("-o " +  '"' + output_processed_reads + '"') else ""} \
      ~{true="-f" false="" force_overwrite_output} \
      ~{true="-L" false="" keep_subreads_one} \
      ~{if defined(jack_knife_read) then ("-J " +  '"' + jack_knife_read + '"') else ""} \
      ~{if defined(clip_c_bases) then ("-c " +  '"' + clip_c_bases + '"') else ""} \
      ~{if defined(change_read_name) then ("-p " +  '"' + change_read_name + '"') else ""}
  >>>
  parameter_meta {
    output_processed_reads: "Output of processed reads, [-]"
    force_overwrite_output: "Force overwrite output file"
    keep_subreads_one: "Keep all subreads in a well, default: the longest one"
    jack_knife_read: "Jack knife of read length, [0]"
    clip_c_bases: "Clip <-c> bases at both ends, [0]"
    change_read_name: "Change the read name into {\"%s%012d\", <-p>}, [pb]"
  }
}