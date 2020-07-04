version 1.0

task PanphlanProfile.py {
  input {
    String? i_dna
    String? i_bowtie_two_indexes
    String? clade
    String? o_dna
    String? i_rna
    String? sample_pairs
    Int? th_zero
    String? th_present
    Int? th_multicopy
    Int? min_coverage
    String? left_max
    String? right_min
    String? rna_max_zeros
    String? rna_norm_percentile
    String? strain_similarity_perc
    String? np
    String? nan
    String? o_cov_plot
    String? o_cov_plot_normed
    String? o_cov
    String? o_idx
    String? o_rna
    String? strain_hit_genes_perc
    String? i_cov
    String? num_genomes
    String? genome_avg_length
    Boolean? add_strains
    Boolean? interactive
    Boolean? verbose
  }
  command <<<
    panphlan_profile.py \
      ~{if defined(i_dna) then ("--i_dna " +  '"' + i_dna + '"') else ""} \
      ~{if defined(i_bowtie_two_indexes) then ("--i_bowtie2_indexes " +  '"' + i_bowtie_two_indexes + '"') else ""} \
      ~{if defined(clade) then ("--clade " +  '"' + clade + '"') else ""} \
      ~{if defined(o_dna) then ("--o_dna " +  '"' + o_dna + '"') else ""} \
      ~{if defined(i_rna) then ("--i_rna " +  '"' + i_rna + '"') else ""} \
      ~{if defined(sample_pairs) then ("--sample_pairs " +  '"' + sample_pairs + '"') else ""} \
      ~{if defined(th_zero) then ("--th_zero " +  '"' + th_zero + '"') else ""} \
      ~{if defined(th_present) then ("--th_present " +  '"' + th_present + '"') else ""} \
      ~{if defined(th_multicopy) then ("--th_multicopy " +  '"' + th_multicopy + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(left_max) then ("--left_max " +  '"' + left_max + '"') else ""} \
      ~{if defined(right_min) then ("--right_min " +  '"' + right_min + '"') else ""} \
      ~{if defined(rna_max_zeros) then ("--rna_max_zeros " +  '"' + rna_max_zeros + '"') else ""} \
      ~{if defined(rna_norm_percentile) then ("--rna_norm_percentile " +  '"' + rna_norm_percentile + '"') else ""} \
      ~{if defined(strain_similarity_perc) then ("--strain_similarity_perc " +  '"' + strain_similarity_perc + '"') else ""} \
      ~{if defined(np) then ("--np " +  '"' + np + '"') else ""} \
      ~{if defined(nan) then ("--nan " +  '"' + nan + '"') else ""} \
      ~{if defined(o_cov_plot) then ("--o_covplot " +  '"' + o_cov_plot + '"') else ""} \
      ~{if defined(o_cov_plot_normed) then ("--o_covplot_normed " +  '"' + o_cov_plot_normed + '"') else ""} \
      ~{if defined(o_cov) then ("--o_cov " +  '"' + o_cov + '"') else ""} \
      ~{if defined(o_idx) then ("--o_idx " +  '"' + o_idx + '"') else ""} \
      ~{if defined(o_rna) then ("--o_rna " +  '"' + o_rna + '"') else ""} \
      ~{if defined(strain_hit_genes_perc) then ("--strain_hit_genes_perc " +  '"' + strain_hit_genes_perc + '"') else ""} \
      ~{if defined(i_cov) then ("--i_cov " +  '"' + i_cov + '"') else ""} \
      ~{if defined(num_genomes) then ("--num_genomes " +  '"' + num_genomes + '"') else ""} \
      ~{if defined(genome_avg_length) then ("--genome_avg_length " +  '"' + genome_avg_length + '"') else ""} \
      ~{true="--add_strains" false="" add_strains} \
      ~{true="--interactive" false="" interactive} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    i_dna: "Input directory of panphlan_map.py results, containing SAMPLE.csv.bz2 files"
    i_bowtie_two_indexes: "Input directory of bowtie2 indexes"
    clade: "Panphlan species/clade database (e.g.: ecoli16)"
    o_dna: "Write gene family presence/absence matrix: gene_presence_absence.csv"
    i_rna: "RNA-seq: input directory of RNA mapping results SAMPLE_RNA.csv.bz2"
    sample_pairs: "RNA-seq: list of DNA-RNA sequencing pairs from the same biological sample."
    th_zero: "Gene family presence/absence threshold: lower are non- present gene families."
    th_present: "Gene family presence/absence threshold: higher are present gene families."
    th_multicopy: "Gene family presence/absence threshold: higher are multicopy gene families."
    min_coverage: "Minimum coverage threshold, default: 2X"
    left_max: "Strain presence/absence plateau curve threshold: left max [1.25]"
    right_min: "Strain presence/absence plateau curve threshold: right min [0.75]"
    rna_max_zeros: "Max accepted percent of zero coveraged gene-families (default: <10 %)."
    rna_norm_percentile: "Percentile for normalizing RNA/DNA ratios"
    strain_similarity_perc: "Minimum threshold (percentage) for genome length to add a reference genome to presence/absence matrix (default: 50)."
    np: "User-defined string to mark non-present genes. [NP]"
    nan: "User-defined string to mark multicopy and undefined genes. [NaN]"
    o_cov_plot: "Filename for gene-family coverage plot."
    o_cov_plot_normed: "Filename for normalized gene-family coverage plot."
    o_cov: "Write raw gene-family coverage matrix."
    o_idx: "Write gene-family plateau definitions (1, -1, -2, -3)"
    o_rna: "Write normalized gene-family transcription values (RNA-seq)."
    strain_hit_genes_perc: "Write overlap of gene-families between samples-strains and reference genomes."
    i_cov: "Read coverage matrix (option --o_cov) for re-analysis using other thresholds"
    num_genomes: "In addition to option --i_cov: number of reference genomes"
    genome_avg_length: "In addition to option --i_cov: average number of gene- families"
    add_strains: "Add reference genomes to gene-family presence/absence matrix."
    interactive: "Plot coverage curves to screen, and not to a file."
    verbose: "Display progress information."
  }
}