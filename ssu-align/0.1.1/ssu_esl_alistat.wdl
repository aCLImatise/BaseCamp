version 1.0

task SsuEslAlistat {
  input {
    Boolean? use_tabular_output
    String? in_format
    Boolean? amino
    Boolean? dna
    Boolean? rna
    Boolean? small
    String? list
    String? ic_info
    String? r_info
    String? pc_info
    String? ps_info
    String? i_info
    String msa_file
  }
  command <<<
    ssu-esl-alistat \
      ~{msa_file} \
      ~{true="-1" false="" use_tabular_output} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--amino" false="" amino} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{true="--small" false="" small} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(ic_info) then ("--icinfo " +  '"' + ic_info + '"') else ""} \
      ~{if defined(r_info) then ("--rinfo " +  '"' + r_info + '"') else ""} \
      ~{if defined(pc_info) then ("--pcinfo " +  '"' + pc_info + '"') else ""} \
      ~{if defined(ps_info) then ("--psinfo " +  '"' + ps_info + '"') else ""} \
      ~{if defined(i_info) then ("--iinfo " +  '"' + i_info + '"') else ""}
  >>>
  parameter_meta {
    use_tabular_output: ": use tabular output, one line per alignment"
    in_format: ": specify that input file is in format <s>"
    amino: ": <msafile> contains protein alignments"
    dna: ": <msafile> contains DNA alignments"
    rna: ": <msafile> contains RNA alignments"
    small: ": use minimal RAM (RAM usage will be independent of aln size)"
    list: ": output list of sequence names in alignment(s) to file <f>"
    ic_info: ": print info on information content alignment column"
    r_info: ": print info on # of non-gap residues in each column to <f>"
    pc_info: ": print per-column   posterior probability info to <f>"
    ps_info: ": print per-sequence posterior probability info to <f>"
    i_info: ": print info on # of insertions b/t all non-gap RF cols to <f>"
    msa_file: ""
  }
}