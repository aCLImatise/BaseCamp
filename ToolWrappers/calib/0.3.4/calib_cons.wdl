version 1.0

task CalibCons {
  input {
    Boolean? fast_q
    Boolean? output_prefix
    Boolean? cluster
    Boolean? threads
    Boolean? min_reads_per_cluster
    String? parameter
  }
  command <<<
    calib_cons \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (output_prefix) then "--output-prefix" else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (min_reads_per_cluster) then "--min-reads-per-cluster" else ""} \
      ~{if defined(parameter) then ("--PARAMETER " +  '"' + parameter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "(type: space separated string list;\\nREQUIRED paramter;\\ncan be set multiple times like in Example 2)"
    output_prefix: "(type: space separated string list;\\nREQUIRED paramter;\\ncan be set multiple times like in Example 2;\\nmust be same size as fastq list)"
    cluster: "(string;\\nREQUIRED paramter)"
    threads: "(positive integer;\\ndefault: 4)"
    min_reads_per_cluster: "(positive integer;\\ndefault: 2)"
    parameter: ""
  }
  output {
    File out_stdout = stdout()
  }
}