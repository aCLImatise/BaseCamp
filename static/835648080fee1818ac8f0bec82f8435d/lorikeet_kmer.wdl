version 1.0

task LorikeetKmer {
  input {
    String? reference
    String? flags
  }
  command <<<
    lorikeet kmer \
      ~{flags} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    reference: ""
    flags: ""
  }
}