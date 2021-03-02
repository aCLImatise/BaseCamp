version 1.0

task GetSuperReadInsertCountsFromReadPlacementFile {
  input {
    File? input_file_devfd
    File? output_file_devfd
    Boolean? fib
    Boolean? bloom
    Int? number_reads
    String cmdline_parse
  }
  command <<<
    getSuperReadInsertCountsFromReadPlacementFile \
      ~{cmdline_parse} \
      ~{if defined(input_file_devfd) then ("--input " +  '"' + input_file_devfd + '"') else ""} \
      ~{if defined(output_file_devfd) then ("--output " +  '"' + output_file_devfd + '"') else ""} \
      ~{if (fib) then "--fib" else ""} \
      ~{if (bloom) then "--bloom" else ""} \
      ~{if defined(number_reads) then ("--number-reads " +  '"' + number_reads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_devfd: "Input file (/dev/fd/0)"
    output_file_devfd: "Output file (/dev/fd/1)"
    fib: "Use fibonacci encoding of the names (false)"
    bloom: "Use a bloom filter to remove unique super-reads (false)"
    number_reads: "Estimated number of super-reads (1000000)"
    cmdline_parse: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_devfd = "${in_output_file_devfd}"
  }
}