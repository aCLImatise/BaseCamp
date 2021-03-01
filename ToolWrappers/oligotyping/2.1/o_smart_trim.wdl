version 1.0

task Osmarttrim {
  input {
    Int? min_percent
    Boolean? from_end
    Boolean? from_start
    File? output_file_name
  }
  command <<<
    o_smart_trim \
      ~{if defined(min_percent) then ("--min-percent " +  '"' + min_percent + '"') else ""} \
      ~{if (from_end) then "--from-end" else ""} \
      ~{if (from_start) then "--from-start" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_percent: "Even if there is only one read that is too short and\\ntherefore full of gap characters, the first location\\nin the alignment file that *every* read has a base\\nwould have to match the length of that short read.\\nWith this percentage you can specify what is the\\npercentage of reads you expect to pass while this\\ntrimming script tries to maximize the remaining read\\nlength after trimming. Default is 95.00"
    from_end: "Trim from the end of the file"
    from_start: "Trim from the beginning of the file"
    output_file_name: "Output file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}