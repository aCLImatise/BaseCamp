version 1.0

task Squid {
  input {
    Boolean? bwa
    Boolean? string_chimeric_alignment
    Boolean? string_fasta_file
    Boolean? pt
    Boolean? pl
    Boolean? pm
    Boolean? mq
    Boolean? dp
    Boolean? di
    Boolean? int_minimum_edge
    Boolean? double_discordant_edge
    Boolean? int_max_allowed
    Boolean? bool_output_gragh
    Boolean? co
    Boolean? to
    Boolean? rg
    String? o
    String? b
  }
  command <<<
    squid \
      ~{if (bwa) then "--bwa" else ""} \
      ~{if (string_chimeric_alignment) then "-c" else ""} \
      ~{if (string_fasta_file) then "-f" else ""} \
      ~{if (pt) then "-pt" else ""} \
      ~{if (pl) then "-pl" else ""} \
      ~{if (pm) then "-pm" else ""} \
      ~{if (mq) then "-mq" else ""} \
      ~{if (dp) then "-dp" else ""} \
      ~{if (di) then "-di" else ""} \
      ~{if (int_minimum_edge) then "-w" else ""} \
      ~{if (double_discordant_edge) then "-r" else ""} \
      ~{if (int_max_allowed) then "-a" else ""} \
      ~{if (bool_output_gragh) then "-G" else ""} \
      ~{if (co) then "-CO" else ""} \
      ~{if (to) then "-TO" else ""} \
      ~{if (rg) then "-RG" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    bwa: "If input BAM is generated by BWA or SpeedSeq aligner (default assuming STAR aligner)"
    string_chimeric_alignment: "string  Chimeric BAM alignment (Required if using STAR aligner)"
    string_fasta_file: "string  Genome FASTA file"
    pt: "bool    Phred type: 0 for Phred33, 1 for Phred64 (0)"
    pl: "int     Maximum Length of low Phred score to filter alignment (10)"
    pm: "int     Low Phred score threshold (4)"
    mq: "int     Mapping quality to filter alignment (1)"
    dp: "int     Maximum distance of aligning positions for concordant alignment (50000)"
    di: "int     Maximum distance of segment indexes for concordant alignment (20)"
    int_minimum_edge: "int     Minimum edge weight (5)"
    double_discordant_edge: "double  Discordant edge ratio multiplier / normal tumor cell ratio (8)"
    int_max_allowed: "int     Max allowed degree (5)"
    bool_output_gragh: "bool    Output gragh file (0)"
    co: "bool    Output ordering of connected components (0)"
    to: "bool    Output ordering of all segments (0)"
    rg: "bool    Output rearranged genome sequence (0)"
    o: ""
    b: ""
  }
  output {
    File out_stdout = stdout()
  }
}