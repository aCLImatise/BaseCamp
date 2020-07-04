version 1.0

task MegahitCorePopcntLocal {
  input {
    String? sparsity
    String? similarity
    String? c
    String? r
    String? o
    String local
  }
  command <<<
    megahit_core_popcnt local \
      ~{local} \
      ~{if defined(sparsity) then ("--sparsity " +  '"' + sparsity + '"') else ""} \
      ~{if defined(similarity) then ("--similarity " +  '"' + similarity + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    sparsity: "(=8)                sparsity of hash mapper"
    similarity: "(=0.8)            alignment similarity threshold"
    c: ""
    r: ""
    o: ""
    local: ""
  }
}