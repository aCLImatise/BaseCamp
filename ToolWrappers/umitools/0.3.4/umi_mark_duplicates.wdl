version 1.0

task UmiMarkDuplicates {
  input {
    File? file
    Int? processes
    Boolean? debug
    Boolean? count
  }
  command <<<
    umi_mark_duplicates \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (count) then "--count" else ""}
  >>>
  parameter_meta {
    file: "the input bam file"
    processes: "number of processes"
    debug: "turn on debug mode"
    count: "Count the number of raw reads for each locus\\n(determined by pairs)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}