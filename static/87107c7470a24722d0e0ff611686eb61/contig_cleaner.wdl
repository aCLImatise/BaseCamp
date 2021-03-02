version 1.0

task ContigCleaner {
  input {
    Int? cut_off_length
    Int? hit_percent_id
    File? skip
    Boolean? debug
  }
  command <<<
    contig_cleaner \
      ~{if defined(cut_off_length) then ("--cutoff_length " +  '"' + cut_off_length + '"') else ""} \
      ~{if defined(hit_percent_id) then ("--hit_percent_id " +  '"' + hit_percent_id + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cut_off_length: "Minimum acceptable contig length [2000]"
    hit_percent_id: "Minimum acceptable hit percent id for contained\\ncontigs [95]"
    skip: "File of contig ids to skip"
    debug: "Keep all temp files"
  }
  output {
    File out_stdout = stdout()
  }
}