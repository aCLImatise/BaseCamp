version 1.0

task Genefuse {
  input {
    String? read_one
    String? fusion
    String? ref
  }
  command <<<
    genefuse \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(fusion) then ("--fusion " +  '"' + fusion + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    read_one: ""
    fusion: ""
    ref: ""
  }
}