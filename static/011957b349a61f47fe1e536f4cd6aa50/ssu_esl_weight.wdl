version 1.0

task SsuEslWeight {
  input {
    Boolean? gersteinsonnhammerchothia_tree_weights
    Boolean? henikoff_positionbased_weights
    Boolean? henikoff_simple_filter
    Boolean? filter_seqs_fractional
    String? send_output_file
    String? id
    String? idf
    String? in_format
    Boolean? amino
    Boolean? dna
    Boolean? rna
    Boolean? options
    String msa_file
  }
  command <<<
    ssu-esl-weight \
      ~{msa_file} \
      ~{true="-g" false="" gersteinsonnhammerchothia_tree_weights} \
      ~{true="-p" false="" henikoff_positionbased_weights} \
      ~{true="-b" false="" henikoff_simple_filter} \
      ~{true="-f" false="" filter_seqs_fractional} \
      ~{if defined(send_output_file) then ("-o " +  '"' + send_output_file + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(idf) then ("--idf " +  '"' + idf + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--amino" false="" amino} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    gersteinsonnhammerchothia_tree_weights: ": Gerstein/Sonnhammer/Chothia tree weights  [default]"
    henikoff_positionbased_weights: ": Henikoff position-based weights"
    henikoff_simple_filter: ": Henikoff simple filter weights"
    filter_seqs_fractional: ": filter out seqs by fractional identity"
    send_output_file: ": send output to file <f>, not stdout"
    id: ": for -b: set identity cutoff  [0.62]  (0<=x<=1)"
    idf: ": for -f: set identity cutoff  [0.80]  (0<=x<=1)"
    in_format: ": specify that input file is in format <s>"
    amino: ": <msa file> contains protein alignments"
    dna: ": <msa file> contains DNA alignments"
    rna: ": <msa file> contains RNA alignments"
    options: ""
    msa_file: ""
  }
}