version 1.0

task Brackenbuild {
  input {
    String? t
    String? x
    String? d
    String? l
    String? k
    String km_er_len
    String threads
    String read_len
    String my_db
  }
  command <<<
    bracken_build \
      ~{km_er_len} \
      ~{threads} \
      ~{read_len} \
      ~{my_db} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(x) then ("-x " +  '"' + x + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bracken:2.6.1--py38hed8969a_0"
  }
  parameter_meta {
    t: ""
    x: ""
    d: ""
    l: ""
    k: ""
    km_er_len: "kmer length used to build the kraken database (default: 35)"
    threads: "the number of threads to use when running kraken classification and the bracken scripts"
    read_len: "read length to get all classifications for (default: 100)"
    my_db: "location of Kraken database"
  }
  output {
    File out_stdout = stdout()
  }
}