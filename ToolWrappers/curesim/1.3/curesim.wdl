version 1.0

task Curesim {
  input {
    File? genome_fasta_file
    File? o
    Int? var_2
    Int? m
    Int? sd
    Int? r
    Float? d
    Float? i
    Float? s
    Boolean? ui
    Boolean? us
    Int? q
    Int? var_12
    Boolean? v
    Boolean? skip
    String? jar
    String java
  }
  command <<<
    curesim \
      ~{java} \
      ~{if defined(genome_fasta_file) then ("-f " +  '"' + genome_fasta_file + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(var_2) then ("-n " +  '"' + var_2 + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(sd) then ("-sd " +  '"' + sd + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (ui) then "-ui" else ""} \
      ~{if (us) then "-us" else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(var_12) then ("-N " +  '"' + var_12 + '"') else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (skip) then "-skip" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_fasta_file: "[mandatory] genome fasta file or reads fastq file"
    o: "[facultative] name of output fastq file [output.fastq]"
    var_2: "[facultative] number of reads to generate [50000]"
    m: "[facultative] read mean size [200]"
    sd: "[facultative] standard deviation for read size [20.0]"
    r: "[facultative] number of random reads [0]"
    d: "[facultative] deletion rate [0.01]"
    i: "[facultative] insertion rate [0.005]"
    s: "[facultative] substitution rate [0.005]"
    ui: "[facultative] uniform distribution for indels [homopolymers]"
    us: "[facultative] uniform distribution for substitutions [exponential]"
    q: "[facultative] quality encoding character ['5']"
    var_12: "[facultative] maximum number of Ns allowed per read [0]"
    v: "[facultative] verbose mode, you need R software in this mode [false]"
    skip: "[facultative] skip the correction step [false]"
    jar: ""
    java: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}