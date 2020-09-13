version 1.0

task Esd2esi {
  input {
    Boolean? help
    File? dataset
    File? var_output
    Boolean? translate
    String? dna_word_len
    String? protein_word_len
    Boolean? word_jump
    Boolean? word_ambiguity
    Boolean? saturate_threshold
    Boolean? memory_limit
  }
  command <<<
    esd2esi \
      ~{if (help) then "--help" else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (translate) then "--translate" else ""} \
      ~{if defined(dna_word_len) then ("--dnawordlen " +  '"' + dna_word_len + '"') else ""} \
      ~{if defined(protein_word_len) then ("--proteinwordlen " +  '"' + protein_word_len + '"') else ""} \
      ~{if (word_jump) then "--wordjump" else ""} \
      ~{if (word_ambiguity) then "--wordambiguity" else ""} \
      ~{if (saturate_threshold) then "--saturatethreshold" else ""} \
      ~{if (memory_limit) then "--memorylimit" else ""}
  >>>
  parameter_meta {
    help: ""
    dataset: ""
    var_output: ""
    translate: ""
    dna_word_len: ""
    protein_word_len: ""
    word_jump: ""
    word_ambiguity: ""
    saturate_threshold: ""
    memory_limit: ""
  }
  output {
    File out_stdout = stdout()
  }
}