version 1.0

task SamtoolsSort {
  input {
    Boolean? sort_read_name
    File? use_outprefix_prefix
    Boolean? final_output_stdout
    Int? compression_level_from
    Int? at
    Int? max_memory_thread
    String in_dot_bam
    String out_dot_prefix
  }
  command <<<
    samtools sort \
      ~{in_dot_bam} \
      ~{out_dot_prefix} \
      ~{if (sort_read_name) then "-n" else ""} \
      ~{if (use_outprefix_prefix) then "-f" else ""} \
      ~{if (final_output_stdout) then "-o" else ""} \
      ~{if defined(compression_level_from) then ("-l " +  '"' + compression_level_from + '"') else ""} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""} \
      ~{if defined(max_memory_thread) then ("-m " +  '"' + max_memory_thread + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sort_read_name: "sort by read name"
    use_outprefix_prefix: "use <out.prefix> as full file name instead of prefix"
    final_output_stdout: "final output to stdout"
    compression_level_from: "compression level, from 0 to 9 [-1]"
    at: "number of sorting and compression threads [1]"
    max_memory_thread: "max memory per thread; suffix K/M/G recognized [768M]"
    in_dot_bam: ""
    out_dot_prefix: ""
  }
  output {
    File out_stdout = stdout()
    File out_use_outprefix_prefix = "${in_use_outprefix_prefix}"
  }
}