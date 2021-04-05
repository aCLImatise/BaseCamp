version 1.0

task MashScreenersh {
  input {
    Directory? i
    Directory? o
    String? to_screen_fasta
    String? name
    String? name_optional_unset
    Int? one
    Int? two
    Float? identity_value_retieve
    String? winner_takes_it
    Int? of_threads
    String? usage_message
  }
  command <<<
    mash_screener_sh \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(to_screen_fasta) then ("-d " +  '"' + to_screen_fasta + '"') else ""} \
      ~{if defined(name) then ("-s " +  '"' + name + '"') else ""} \
      ~{if defined(name_optional_unset) then ("-g " +  '"' + name_optional_unset + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(identity_value_retieve) then ("-f " +  '"' + identity_value_retieve + '"') else ""} \
      ~{if defined(winner_takes_it) then ("-w " +  '"' + winner_takes_it + '"') else ""} \
      ~{if defined(of_threads) then ("-T " +  '"' + of_threads + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.4--1"
  }
  parameter_meta {
    i: "directory (optional)"
    o: "directory (optional)"
    to_screen_fasta: "to screen (.fasta)"
    name: "name"
    name_optional_unset: "name (optional). If unset, samples will be gathered in NO_GROUP group"
    one: "corresponding to paired-end R1"
    two: "corresponding to paired-end R2"
    identity_value_retieve: "identity value to retieve sequence ids with at least this value (default 0.9)"
    winner_takes_it: "winner takes it all"
    of_threads: "of threads"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}