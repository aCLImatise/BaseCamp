version 1.0

task Hhmake {
  input {
    File? query_alignment_am
    File? hmm_file_written
    File? hmm_file_appended
    Int? verbose_mode_screen
    Int? seq
    Boolean? add_cons
    String? name
    Boolean? id
    Boolean? diff
    Boolean? cov
    Boolean? qid
    Boolean? qsc
    Boolean? neff
    Boolean? pc_hhm_con_txt_mode
    Boolean? pc_hhm_con_txt_a
    Boolean? pc_hhm_con_txt_b
    Boolean? pc_hhm_con_txt_c
    Boolean? pc_hhm_no_con_txt_mode
    Boolean? pc_hhm_no_con_txt_a
    Boolean? pc_hhm_no_con_txt_b
    Boolean? pc_hhm_no_con_txt_c
    Boolean? no_con_txt
    File? con_txt
    Int? max_seq
    Int? max_res
  }
  command <<<
    hhmake \
      ~{if defined(query_alignment_am) then ("-i " +  '"' + query_alignment_am + '"') else ""} \
      ~{if defined(hmm_file_written) then ("-o " +  '"' + hmm_file_written + '"') else ""} \
      ~{if defined(hmm_file_appended) then ("-a " +  '"' + hmm_file_appended + '"') else ""} \
      ~{if defined(verbose_mode_screen) then ("-v " +  '"' + verbose_mode_screen + '"') else ""} \
      ~{if defined(seq) then ("-seq " +  '"' + seq + '"') else ""} \
      ~{if (add_cons) then "-add_cons" else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (diff) then "-diff" else ""} \
      ~{if (cov) then "-cov" else ""} \
      ~{if (qid) then "-qid" else ""} \
      ~{if (qsc) then "-qsc" else ""} \
      ~{if (neff) then "-neff" else ""} \
      ~{if (pc_hhm_con_txt_mode) then "-pc_hhm_contxt_mode" else ""} \
      ~{if (pc_hhm_con_txt_a) then "-pc_hhm_contxt_a" else ""} \
      ~{if (pc_hhm_con_txt_b) then "-pc_hhm_contxt_b" else ""} \
      ~{if (pc_hhm_con_txt_c) then "-pc_hhm_contxt_c" else ""} \
      ~{if (pc_hhm_no_con_txt_mode) then "-pc_hhm_nocontxt_mode" else ""} \
      ~{if (pc_hhm_no_con_txt_a) then "-pc_hhm_nocontxt_a" else ""} \
      ~{if (pc_hhm_no_con_txt_b) then "-pc_hhm_nocontxt_b" else ""} \
      ~{if (pc_hhm_no_con_txt_c) then "-pc_hhm_nocontxt_c" else ""} \
      ~{if (no_con_txt) then "-nocontxt" else ""} \
      ~{if defined(con_txt) then ("-contxt " +  '"' + con_txt + '"') else ""} \
      ~{if defined(max_seq) then ("-maxseq " +  '"' + max_seq + '"') else ""} \
      ~{if defined(max_res) then ("-maxres " +  '"' + max_res + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0"
  }
  parameter_meta {
    query_alignment_am: "query alignment (A2M, A3M, or FASTA), or query HMM"
    hmm_file_written: "HMM file to be written to  (default=<infile.hhm>)"
    hmm_file_appended: "HMM file to be appended to"
    verbose_mode_screen: "verbose mode: 0:no screen output  1:only warings  2: verbose"
    seq: "max. number of query/template sequences displayed (def=10)\\nBeware of overflows! All these sequences are stored in memory."
    add_cons: "make consensus sequence master sequence of query MSA"
    name: "use this name for HMM (default: use name of first sequence)"
    id: "[0,100]  maximum pairwise sequence identity (%) (def=90)"
    diff: "[0,inf[  filter MSA by selecting most diverse set of sequences, keeping\\nat least this many seqs in each MSA block of length 50 (def=100)"
    cov: "[0,100]  minimum coverage with query (%) (def=0)"
    qid: "[0,100]  minimum sequence identity with query (%) (def=0)"
    qsc: "[0,100]  minimum score per column with query  (def=-20.0)"
    neff: "[1,inf]  target diversity of alignment (default=off)"
    pc_hhm_con_txt_mode: "{0,..,3}   position dependence of pc admixture 'tau' (pc mode, default=0)\\n0: no pseudo counts:    tau = 0\\n1: constant             tau = a\\n2: diversity-dependent: tau = a/(1+((Neff[i]-1)/b)^c)\\n3: CSBlast admixture:   tau = a(1+b)/(Neff[i]+b)\\n(Neff[i]: number of effective seqs in local MSA around column i)"
    pc_hhm_con_txt_a: "[0,1]        overall pseudocount admixture (def=0.9)"
    pc_hhm_con_txt_b: "[1,inf[      Neff threshold value for mode 2 (def=4.0)"
    pc_hhm_con_txt_c: "[0,3]        extinction exponent c for mode 2 (def=1.0)"
    pc_hhm_no_con_txt_mode: "{0,..,3}   position dependence of pc admixture 'tau' (pc mode, default=2)\\n0: no pseudo counts:    tau = 0\\n1: constant             tau = a\\n2: diversity-dependent: tau = a/(1+((Neff[i]-1)/b)^c)\\n(Neff[i]: number of effective seqs in local MSA around column i)"
    pc_hhm_no_con_txt_a: "[0,1]        overall pseudocount admixture (def=1.0)"
    pc_hhm_no_con_txt_b: "[1,inf[      Neff threshold value for mode 2 (def=1.5)"
    pc_hhm_no_con_txt_c: "[0,3]        extinction exponent c for mode 2 (def=1.0)"
    no_con_txt: "use substitution-matrix instead of context-specific pseudocounts"
    con_txt: "context file for computing context-specific pseudocounts (default=)"
    max_seq: "max number of input rows (def=65535)"
    max_res: "max number of HMM columns (def=20001)"
  }
  output {
    File out_stdout = stdout()
  }
}