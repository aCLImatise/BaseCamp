version 1.0

task Ssueslalistat {
  input {
    Boolean? use_tabular_line
    File? in_format
    Boolean? amino
    Boolean? dna
    Boolean? rna
    Boolean? small
    File? list
    String? ic_info
    String? r_info
    String? pc_info
    String? ps_info
    String? i_info
    String msa_file
  }
  command <<<
    ssu_esl_alistat \
      ~{msa_file} \
      ~{if (use_tabular_line) then "-1" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (small) then "--small" else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(ic_info) then ("--icinfo " +  '"' + ic_info + '"') else ""} \
      ~{if defined(r_info) then ("--rinfo " +  '"' + r_info + '"') else ""} \
      ~{if defined(pc_info) then ("--pcinfo " +  '"' + pc_info + '"') else ""} \
      ~{if defined(ps_info) then ("--psinfo " +  '"' + ps_info + '"') else ""} \
      ~{if defined(i_info) then ("--iinfo " +  '"' + i_info + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_tabular_line: ": use tabular output, one line per alignment"
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
  output {
    File out_stdout = stdout()
    File out_list = "${in_list}"
  }
}