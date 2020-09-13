version 1.0

task Novoindex {
  input {
    Boolean? kmer_length_used
    Boolean? step_size_index
    Boolean? sets_number_use
    Boolean? sets_masking_indexed
    Boolean? sets_bisulphite_indexing
    Boolean? add_m_tag
    Boolean? name_sets_name
    String novo_index
    String index_file
    String sequence_files
  }
  command <<<
    novoindex \
      ~{novo_index} \
      ~{index_file} \
      ~{sequence_files} \
      ~{if (kmer_length_used) then "-k" else ""} \
      ~{if (step_size_index) then "-s" else ""} \
      ~{if (sets_number_use) then "-t" else ""} \
      ~{if (sets_masking_indexed) then "-m" else ""} \
      ~{if (sets_bisulphite_indexing) then "-b" else ""} \
      ~{if (add_m_tag) then "-5" else ""} \
      ~{if (name_sets_name) then "-n" else ""}
  >>>
  parameter_meta {
    kmer_length_used: "99        is the k-mer length to be used for the index. Typically 14."
    step_size_index: "9         is the step size for the index. Typical values are from 1 to 3."
    sets_number_use: "9         sets number of threads to use for indexing."
    sets_masking_indexed: "sets lower case masking on. Lower case sequence will not be indexed."
    sets_bisulphite_indexing: "sets bisulphite indexing and alignment mode for methylation experiments."
    add_m_tag: "add an M5 tag to sequence headers."
    name_sets_name: "name      sets the an internal name for the reference sequence index. This is\\nused in report headers and as the AS: field in SAM SQ record.\\nDefaults to the indexfile name."
    novo_index: "-k 99 -s 9 -m indexfile sequencefiles...."
    index_file: "is the filename for the indexed reference sequence generated by novoindex."
    sequence_files: "a list of sequence files in fasta format to be included in the index."
  }
  output {
    File out_stdout = stdout()
  }
}