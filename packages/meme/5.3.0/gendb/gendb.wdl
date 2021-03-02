version 1.0

task Gendb {
  input {
    File? alph
    String? am_big
    File? b_file
    Int? min_seq
    Int? max_seq
    String? order
    Int? type
    Boolean? dummy
    Int? seed
  }
  command <<<
    gendb \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if defined(am_big) then ("-ambig " +  '"' + am_big + '"') else ""} \
      ~{if defined(b_file) then ("-bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(min_seq) then ("-minseq " +  '"' + min_seq + '"') else ""} \
      ~{if defined(max_seq) then ("-maxseq " +  '"' + max_seq + '"') else ""} \
      ~{if defined(order) then ("-order " +  '"' + order + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (dummy) then "-dummy" else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    alph: "Set the alphabet (overrides -type)"
    am_big: "Set the fraction of symbols that\\nwill be ambiguous (overrides -type)"
    b_file: "Set the background"
    min_seq: "Set the minimum sequence length\\n(default: 50)"
    max_seq: "Set the maximum sequence length\\n(default: 2000)"
    order: "Set the highest background order to load\\n(default: load highest available)"
    type: "|1|2|3|4          Set the alphabet type\\n0 = Protein with 1% ambiguous symbols (default)\\n1 = DNA with 1% ambiguous symbols\\n2 = codons (ignores -bfile)\\n3 = DNA without ambiguous symbols\\n4 = Protein without ambiguous symbols"
    dummy: "Add dummy sequence showing the configuration"
    seed: "Set the pseudo-random number generator seed"
  }
  output {
    File out_stdout = stdout()
  }
}