version 1.0

task Reparationpl {
  input {
    Boolean? bam
    Boolean? genome_fasta_file
    Boolean? sdir
    String? db
    Boolean? gtf
    Boolean? wdir
    String? en
    Boolean? ribosome_profiling_read
    Int? mn
    Int? mx
    Int? mo
    Int? mr
    Boolean? ost
    Boolean? osp
    Boolean? osd
    Boolean? seed
    String? sd
    String? id
    Float? ev
    Int? pg
    Boolean? cdn
    Boolean? n_cdn
    Boolean? p_cdn
    Boolean? g_code
    Int? by
    Boolean? score
    String bacteria_genome_fast_a_file
    String curated_protein_db
  }
  command <<<
    reparation_pl \
      ~{bacteria_genome_fast_a_file} \
      ~{curated_protein_db} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (genome_fasta_file) then "-g" else ""} \
      ~{if (sdir) then "-sdir" else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if (gtf) then "-gtf" else ""} \
      ~{if (wdir) then "-wdir" else ""} \
      ~{if defined(en) then ("-en " +  '"' + en + '"') else ""} \
      ~{if (ribosome_profiling_read) then "-p" else ""} \
      ~{if defined(mn) then ("-mn " +  '"' + mn + '"') else ""} \
      ~{if defined(mx) then ("-mx " +  '"' + mx + '"') else ""} \
      ~{if defined(mo) then ("-mo " +  '"' + mo + '"') else ""} \
      ~{if defined(mr) then ("-mr " +  '"' + mr + '"') else ""} \
      ~{if (ost) then "-ost" else ""} \
      ~{if (osp) then "-osp" else ""} \
      ~{if (osd) then "-osd" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if defined(sd) then ("-sd " +  '"' + sd + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(ev) then ("-ev " +  '"' + ev + '"') else ""} \
      ~{if defined(pg) then ("-pg " +  '"' + pg + '"') else ""} \
      ~{if (cdn) then "-cdn" else ""} \
      ~{if (n_cdn) then "-ncdn" else ""} \
      ~{if (p_cdn) then "-pcdn" else ""} \
      ~{if (g_code) then "-gcode" else ""} \
      ~{if defined(by) then ("-by " +  '"' + by + '"') else ""} \
      ~{if (score) then "-score" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "Ribosome alignment file (bam)"
    genome_fasta_file: "Genome fasta file. This should be the same genome fasta file used in\\nthe alignment of the Ribo-seq reads."
    sdir: "The \\\"scripts\\\" directory (avialable within the REPARATION directory),\\ndefaults to directory of reparation.pl script"
    db: "database of curated bacteria protein sequences"
    gtf: "GTF genome annotation file"
    wdir: "working directory (defaults to current directory)"
    en: "name"
    ribosome_profiling_read: "Ribosome profiling read p site assignment strategy, 1 = plastid\\nP-site estimation ((default), 3 = 3 prime of read, 5 prime of the\\nread"
    mn: "ribosome profiling reads shorter than these values are\\neliminated from the ananlysis (default = 22)"
    mx: "ribosome profiling reads longerer than these values are\\neliminated from the ananlysis (default = 40)"
    mo: "length of open reading frame considered for prediction\\n(default = 30 value in nucleotides)"
    mr: "reading frames with less than these number of ribosome\\nprofiling reads are eliminated from analysis (default = 3)"
    ost: "Start region length in nucleotides (default = 45nts). This value is\\nused to calculate features specific to the start region."
    osp: "Stop region length in nucleotides (default = 21nts). This value is\\nused to calculate features specific to the stop region."
    osd: "Distance of Shine dalgarno sequence from start codon (defualt =\\n5nts)."
    seed: "Shine dalgarno sequence (default = GGAGG). The shine dalgarno\\nsequence used for Ribosome binind site energy calculation."
    sd: "ribosome binding site (RBS) energy in the open reading frame\\nprediction (Y = use RBS energy (default), N = donot use RBS engergy)"
    id: "UNI STUTT Minimum identify score for BLAST protein"
    ev: "e-vlaue for BLAST protein sequence search (default = 1e-5)"
    pg: "for initial positive set generation (1 = prodigal (default),\\n2 = glimmer)"
    cdn: "Comma separted list of start codons (default = ATG,GTG,TTG)"
    n_cdn: "Start codon for negative set (default = CTG)"
    p_cdn: "Start codon for positive set (default = ATG,GTG,TTG). Should be a\\nsubset of the standard genetic code for bacteria"
    g_code: "Genetic code to use for initail positive set generation. Valid when\\n-pg is 1. (default = 11, takes value between 1-25)"
    by: "to determine if prodigal should bypass Shine-Dalgarno trainer\\nand force a full motif scan (default = N). (Y = yes, N = no) Valid\\nonly for -pg 1"
    score: "Random forest classification probability score threshold to define\\nas ORF are protein coding, the minimum (defualt is 0.5)\\n"
    bacteria_genome_fast_a_file: ""
    curated_protein_db: ""
  }
  output {
    File out_stdout = stdout()
  }
}