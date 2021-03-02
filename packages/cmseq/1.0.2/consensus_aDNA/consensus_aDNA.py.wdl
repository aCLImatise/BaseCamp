version 1.0

task ConsensusADNApy {
  input {
    File? id_contig_idfocus
    Boolean? set_unmapped_fqcfail
    String? refseq
    Boolean? sort_index
    Int? min_qual
    Int? min_cov
    Float? dominant_frq_thr_sh
    Int? min_len
    Int? pos_specific_prob_tab
    String? pos_damage_prob_thr_sh
    String? id
  }
  command <<<
    consensus_aDNA_py \
      ~{id} \
      ~{if defined(id_contig_idfocus) then ("-c " +  '"' + id_contig_idfocus + '"') else ""} \
      ~{if (set_unmapped_fqcfail) then "-f" else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if (sort_index) then "--sortindex" else ""} \
      ~{if defined(min_qual) then ("--minqual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(dominant_frq_thr_sh) then ("--dominant_frq_thrsh " +  '"' + dominant_frq_thr_sh + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(pos_specific_prob_tab) then ("--pos_specific_prob_tab " +  '"' + pos_specific_prob_tab + '"') else ""} \
      ~{if defined(pos_damage_prob_thr_sh) then ("--pos_damage_prob_thrsh " +  '"' + pos_damage_prob_thr_sh + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cmseq:1.0.2--pyh7b7c402_0"
  }
  parameter_meta {
    id_contig_idfocus: "ID, --contig REFERENCE ID\\nFocus on a subset of references in the BAM file. Can\\nbe a list of references separated by commas or a FASTA\\nfile (the IDs are used to subset)"
    set_unmapped_fqcfail: "If set unmapped (FUNMAP), secondary (FSECONDARY), qc-\\nfail (FQCFAIL) and duplicate (FDUP) are excluded. If\\nunset ALL reads are considered (bedtools genomecov\\nstyle). Default: unset"
    refseq: "Input the refrence genome sequence"
    sort_index: "Sort and index the file"
    min_qual: "Minimum base quality. Bases with quality score lower\\nthan this will be discarded. This is performed BEFORE\\n--mincov. Default: 30"
    min_cov: "Minimum position coverage to perform the polymorphism\\ncalculation. Position with a lower depth of coverage\\nwill be discarded (i.e. considered as zero-coverage\\npositions). This is calculated AFTER --minqual.\\nDefault: 0"
    dominant_frq_thr_sh: "Cutoff for degree of `allele dominance` for a position\\nto be considered polymorphic. Default: 0.8"
    min_len: "Minimum Reference Length for a reference to be\\nconsidered. Default: 0"
    pos_specific_prob_tab: "Stats_out_MCMC_correct_prob table produced from\\nmapdamage2. It contains the position specific\\nprobability of observing a C->T or G->A due to a post-\\nmortem damage."
    pos_damage_prob_thr_sh: "Maximum post-mortem damage probability for a nucletide\\non a read to be considered when building consensus.\\n"
    id: ""
  }
  output {
    File out_stdout = stdout()
  }
}