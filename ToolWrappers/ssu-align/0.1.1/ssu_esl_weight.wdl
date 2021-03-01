version 1.0

task Ssueslweight {
  input {
    Boolean? gersteinsonnhammerchothia_tree_weights
    Boolean? henikoff_positionbased_weights
    Boolean? henikoff_simple_filter
    Boolean? filter_seqs_fractional
    File? send_output_file
    Float? id
    Float? idf
    File? in_format
    Boolean? amino
    Boolean? dna
    Boolean? rna
    Boolean? options
    File msa_file
  }
  command <<<
    ssu_esl_weight \
      ~{msa_file} \
      ~{if (gersteinsonnhammerchothia_tree_weights) then "-g" else ""} \
      ~{if (henikoff_positionbased_weights) then "-p" else ""} \
      ~{if (henikoff_simple_filter) then "-b" else ""} \
      ~{if (filter_seqs_fractional) then "-f" else ""} \
      ~{if defined(send_output_file) then ("-o " +  '"' + send_output_file + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(idf) then ("--idf " +  '"' + idf + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
    File out_send_output_file = "${in_send_output_file}"
  }
}