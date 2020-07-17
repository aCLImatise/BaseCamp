version 1.0

task Gendb {
  input {
    String? alph
    String? am_big
    String? b_file
    Int? min_seq
    Int? max_seq
    String? order
    String? type
    Boolean? dummy
    String? seed
    String sequence_count
  }
  command <<<
    gendb \
      ~{sequence_count} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if defined(am_big) then ("-ambig " +  '"' + am_big + '"') else ""} \
      ~{if defined(b_file) then ("-bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(min_seq) then ("-minseq " +  '"' + min_seq + '"') else ""} \
      ~{if defined(max_seq) then ("-maxseq " +  '"' + max_seq + '"') else ""} \
      ~{if defined(order) then ("-order " +  '"' + order + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{true="-dummy" false="" dummy} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    alph: "Set the alphabet (overrides -type)"
    am_big: "Set the fraction of symbols that will be ambiguous (overrides -type)"
    b_file: "Set the background"
    min_seq: "Set the minimum sequence length (default: 50)"
    max_seq: "Set the maximum sequence length (default: 2000)"
    order: "Set the highest background order to load (default: load highest available)"
    type: "|1|2|3|4          Set the alphabet type 0 = Protein with 1% ambiguous symbols (default) 1 = DNA with 1% ambiguous symbols 2 = codons (ignores -bfile) 3 = DNA without ambiguous symbols 4 = Protein without ambiguous symbols"
    dummy: "Add dummy sequence showing the configuration"
    seed: "Set the pseudo-random number generator seed"
    sequence_count: ""
  }
}