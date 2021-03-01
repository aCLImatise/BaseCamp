version 1.0

task HLAProfilerplFilter {
  input {
    Boolean? fast_q_one
    Boolean? fast_q_two
    Directory? output_dir
    Boolean? database_dir
    Boolean? database_name
    Boolean? kraken_path
    Boolean? threads
    String options
  }
  command <<<
    HLAProfiler_pl filter \
      ~{options} \
      ~{if (fast_q_one) then "-fastq1" else ""} \
      ~{if (fast_q_two) then "-fastq2" else ""} \
      ~{if (output_dir) then "-output_dir" else ""} \
      ~{if (database_dir) then "-database_dir" else ""} \
      ~{if (database_name) then "-database_name" else ""} \
      ~{if (kraken_path) then "-kraken_path" else ""} \
      ~{if (threads) then "-threads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q_one: "|fq1             read1 fastq.(required)"
    fast_q_two: "|fq2             read2 fastq.(required)"
    output_dir: "|od          location of output directory. (default:\\\".\\\")"
    database_dir: "|dd        location of database directory(default:\\\".\\\")"
    database_name: "|db       name of the HLA database to be created(default:hla)"
    kraken_path: "|kp         base directory of kraken installation. (default:base directory of path returned by `which kraken`)"
    threads: "|c              number of threads to uses for processing.(default:1)"
    options: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}