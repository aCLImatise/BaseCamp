version 1.0

task OSmartTrim {
  input {
    String? min_percent
    Boolean? from_end
    Boolean? from_start
    String? output_file_name
  }
  command <<<
    o-smart-trim \
      ~{if defined(min_percent) then ("--min-percent " +  '"' + min_percent + '"') else ""} \
      ~{true="--from-end" false="" from_end} \
      ~{true="--from-start" false="" from_start} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    min_percent: "Even if there is only one read that is too short and therefore full of gap characters, the first location in the alignment file that *every* read has a base would have to match the length of that short read. With this percentage you can specify what is the percentage of reads you expect to pass while this trimming script tries to maximize the remaining read length after trimming. Default is 95.00"
    from_end: "Trim from the end of the file"
    from_start: "Trim from the beginning of the file"
    output_file_name: "Output file name"
  }
}