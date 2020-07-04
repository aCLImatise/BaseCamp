version 1.0

task SSAKE {
  input {
    String? de_novo_assembly
    String? sequence_word_size
    String? read_space_restriction
  }
  command <<<
    SSAKE \
      ~{if defined(de_novo_assembly) then ("-i " +  '"' + de_novo_assembly + '"') else ""} \
      ~{if defined(sequence_word_size) then ("-j " +  '"' + sequence_word_size + '"') else ""} \
      ~{if defined(read_space_restriction) then ("-u " +  '"' + read_space_restriction + '"') else ""}
  >>>
  parameter_meta {
    de_novo_assembly: "(de novo) assembly  i.e Targets used to recruit reads for de novo assembly, not guide/seed reference-based assemblies (-i 1 = yes (default), 0 = no, optional)"
    sequence_word_size: "sequence word size to hash (default -j 15)"
    read_space_restriction: "read space restriction to seeds while -s option in use (-u 1 = yes, default = no, optional)"
  }
}