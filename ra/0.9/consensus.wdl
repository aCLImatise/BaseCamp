version 1.0

task Consensus {
  input {
    String? reads
    String? contigs
  }
  command <<<
    consensus \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""}
  >>>
  parameter_meta {
    reads: ""
    contigs: ""
  }
}