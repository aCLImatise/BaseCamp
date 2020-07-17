version 1.0

task CactusFastaFragments.py {
  input {
    Int? fragment
    Int? step
    Boolean? shuffle
    String? head
  }
  command <<<
    cactus_fasta_fragments.py \
      ~{if defined(fragment) then ("--fragment " +  '"' + fragment + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{true="--shuffle" false="" shuffle} \
      ~{if defined(head) then ("--head " +  '"' + head + '"') else ""}
  >>>
  parameter_meta {
    fragment: "length of each fragment (default is 100)"
    step: "distance between the start of each fragment (default is 50)"
    shuffle: "[=<seed>]   randomly shuffle the order that fragments are output; this can be very memory intensive, as all fragments are collected in a list before any are output (by default, fragments are output in sequence order)"
    head: "limit the number of fragments emitted"
  }
}