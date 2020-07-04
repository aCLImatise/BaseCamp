version 1.0

task UmiMarkDuplicates {
  input {
    File? file
    String? processes
    Boolean? debug
    Boolean? count
  }
  command <<<
    umi_mark_duplicates \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--count" false="" count}
  >>>
  parameter_meta {
    file: "the input bam file"
    processes: "number of processes"
    debug: "turn on debug mode"
    count: "Count the number of raw reads for each locus (determined by pairs)"
  }
}