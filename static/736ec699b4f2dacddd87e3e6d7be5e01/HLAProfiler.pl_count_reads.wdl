version 1.0

task HLAProfilerplCountReads {
  input {
    Boolean? reads_directory
    Boolean? sample_name
    Boolean? output_directory
    Boolean? threads
    String options
  }
  command <<<
    HLAProfiler_pl count_reads \
      ~{options} \
      ~{if (reads_directory) then "-reads_directory" else ""} \
      ~{if (sample_name) then "-sample_name" else ""} \
      ~{if (output_directory) then "-output_directory" else ""} \
      ~{if (threads) then "-threads" else ""}
  >>>
  parameter_meta {
    reads_directory: "location of directory containing filtered read fastqs. Please make sure to filter files using HLAProfiler.pl filter before counting (required)"
    sample_name: "|sn         name of the sample. This must perfect match the prefix of each of the read count files. i.e. The sample name for file NA12878.200.B_1.uniq.cnt would be NA12878.200 (required)"
    output_directory: "|od    location of directory containing filtered read fastqs. Please make sure to filter files using HLAProfiler.pl filter before counting (default:-reads_directory)"
    threads: "|c              number of threads to uses for processing.(default:1)"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}