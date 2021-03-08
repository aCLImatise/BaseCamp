version 1.0

task JoinSpadesFastgByBlastpy {
  input {
    File? followed_your_input
    String? followed_fasta_index
    Boolean? keep_temp
    Float? bt
    Int? max_gap
    Boolean? con_all
    Float? depth
    File? which_blast
  }
  command <<<
    join_spades_fastg_by_blast_py \
      ~{if defined(followed_your_input) then ("-g " +  '"' + followed_your_input + '"') else ""} \
      ~{if defined(followed_fasta_index) then ("-f " +  '"' + followed_fasta_index + '"') else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if defined(bt) then ("--bt " +  '"' + bt + '"') else ""} \
      ~{if defined(max_gap) then ("--max-gap " +  '"' + max_gap + '"') else ""} \
      ~{if (con_all) then "--con-all" else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(which_blast) then ("--which-blast " +  '"' + which_blast + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0"
  }
  parameter_meta {
    followed_your_input: "followed by your input fastg file"
    followed_fasta_index: "followed by Fasta index format"
    keep_temp: "Choose to disable deleting temp files produced by\\nblast and this script"
    bt: "Default: 0.60"
    max_gap: "Default: 1500"
    con_all: "Choose to activate connecting all possible contigs.\\nDefault: False"
    depth: "Default: 1.0"
    which_blast: "Assign the path to BLAST binary files if not added to\\nthe path. Default: try GetOrganelleDep/linux/ncbi-\\nblast first, then $PATH\\n"
  }
  output {
    File out_stdout = stdout()
  }
}