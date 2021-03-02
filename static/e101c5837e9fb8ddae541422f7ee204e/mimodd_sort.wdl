version 1.0

task MimoddSort {
  input {
    File? ofile
    File? i_format
    String? o_format
    Boolean? by_name
    Int? compression_level_from
    String? memory
    Int? threads
    String sort
  }
  command <<<
    mimodd sort \
      ~{sort} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(i_format) then ("--iformat " +  '"' + i_format + '"') else ""} \
      ~{if defined(o_format) then ("--oformat " +  '"' + o_format + '"') else ""} \
      ~{if (by_name) then "--by-name" else ""} \
      ~{if defined(compression_level_from) then ("-l " +  '"' + compression_level_from + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ofile: "redirect the output to the specified file (default:\\nstdout)"
    i_format: "|sam     the format of the input file (default: assume bam)"
    o_format: "|sam     specify whether the output should be in sam or bam\\nformat (default: bam)"
    by_name: "sort by read name"
    compression_level_from: "compression level, from 0 to 9"
    memory: "maximal amount of memory to be used in GB (overrides\\nconfig setting)"
    threads: "the number of threads to use (overrides config\\nsetting)\\n"
    sort: ""
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}