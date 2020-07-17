version 1.0

task ArticDemultiplex {
  input {
    Boolean? q
    String? threads
    String? prefix
    String fast_a
  }
  command <<<
    artic demultiplex \
      ~{fast_a} \
      ~{true="-q" false="" q} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    threads: ""
    prefix: ""
    fast_a: "Undemultiplexed FASTA file."
  }
}