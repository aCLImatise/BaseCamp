version 1.0

task SmartMapPrep {
  input {
    File? basename_bowtie_index
    String? prefix_prepended_output
    Int? one
    Int? two
    Int? cpu_threads_used
    Int? i
    Int? l
    Int? number_alignments_reported
    String? removed_read_names
  }
  command <<<
    SmartMapPrep \
      ~{if defined(basename_bowtie_index) then ("-x " +  '"' + basename_bowtie_index + '"') else ""} \
      ~{if defined(prefix_prepended_output) then ("-o " +  '"' + prefix_prepended_output + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(cpu_threads_used) then ("-p " +  '"' + cpu_threads_used + '"') else ""} \
      ~{if defined(i) then ("-I " +  '"' + i + '"') else ""} \
      ~{if defined(l) then ("-L " +  '"' + l + '"') else ""} \
      ~{if defined(number_alignments_reported) then ("-k " +  '"' + number_alignments_reported + '"') else ""} \
      ~{if defined(removed_read_names) then ("-s " +  '"' + removed_read_names + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smartmap:1.0.0--he513fc3_0"
  }
  parameter_meta {
    basename_bowtie_index: "to basename of Bowtie2 index for alignment"
    prefix_prepended_output: "prefix prepended to the output files"
    one: "file for read mate 1 (can be gzipped)"
    two: "file for read mate 2 (can be gzipped)"
    cpu_threads_used: "of CPU threads to be used for multithreaded alignment (default: 1)"
    i: "insert length (default: 100)"
    l: "insert length (default: 250)"
    number_alignments_reported: "number of alignments reported (default: 51)"
    removed_read_names: "to be removed from read names"
  }
  output {
    File out_stdout = stdout()
  }
}