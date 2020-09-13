version 1.0

task CactusFastaFragmentspy {
  input {
    Int? fragment
    Int? step
    Boolean? shuffle
    Int? head
  }
  command <<<
    cactus_fasta_fragments_py \
      ~{if defined(fragment) then ("--fragment " +  '"' + fragment + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if (shuffle) then "--shuffle" else ""} \
      ~{if defined(head) then ("--head " +  '"' + head + '"') else ""}
  >>>
  parameter_meta {
    fragment: "length of each fragment\\n(default is 100)"
    step: "distance between the start of each fragment\\n(default is 50)"
    shuffle: "[=<seed>]   randomly shuffle the order that fragments are output;\\nthis can be very memory intensive, as all fragments\\nare collected in a list before any are output\\n(by default, fragments are output in sequence order)"
    head: "limit the number of fragments emitted"
  }
  output {
    File out_stdout = stdout()
  }
}