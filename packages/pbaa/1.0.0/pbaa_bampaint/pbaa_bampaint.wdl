version 1.0

task PbaaBampaint {
  input {
    Boolean? num_threads
    Boolean? log_level
    Boolean? log_file
    String var_input
    String var_4
    String var_5
    File read_info_file
    String var_7
    String info
    String input_bam
    File var_10
    String var_11
    File var_12
    String var_13
    String var_14
    String information
    String to
    String add
    String color
    String produced
    String by
    String pba_a
  }
  command <<<
    pbaa bampaint \
      ~{var_input} \
      ~{var_4} \
      ~{var_5} \
      ~{read_info_file} \
      ~{var_7} \
      ~{info} \
      ~{input_bam} \
      ~{var_10} \
      ~{var_11} \
      ~{var_12} \
      ~{var_13} \
      ~{var_14} \
      ~{information} \
      ~{to} \
      ~{add} \
      ~{color} \
      ~{produced} \
      ~{by} \
      ~{pba_a} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_file) then "--log-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbaa:1.0.0--hdfd78af_0"
  }
  parameter_meta {
    num_threads: "INT   Number of threads to use, 0 means autodetection. [0]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO,\\nWARN, FATAL). [WARN]"
    log_file: "FILE  Log to a file, instead of stderr."
    var_input: ""
    var_4: ""
    var_5: ""
    read_info_file: ""
    var_7: ""
    info: ""
    input_bam: ""
    var_10: ""
    var_11: ""
    var_12: ""
    var_13: ""
    var_14: ""
    information: ""
    to: ""
    add: ""
    color: ""
    produced: ""
    by: ""
    pba_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}