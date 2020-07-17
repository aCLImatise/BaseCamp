version 1.0

task HmmgsSearch {
  input {
    Boolean? u
    String? p
    String km_ers
  }
  command <<<
    hmmgs search \
      ~{km_ers} \
      ~{true="-u" false="" u} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    u: ""
    p: ""
    km_ers: "starting kmers (can use KmerFilter's fast_kmer_filter to identify starting kmers)"
  }
}