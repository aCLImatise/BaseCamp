version 1.0

task PanGenomePostAnalysis {
  input {
    Boolean? delete_intermediate_files
    Boolean? create_r_plots
    String? clusters_filename
    Float? cd
    Boolean? do_split_groups
    Boolean? add_inference_values
    String? file_protein_filenames
    Int? maximum_number_clusters
    String? file_gff_filenames
    Boolean? core_gene_alignement
    Boolean? fast_core_gene
    String? clusters_output_filename
    String? output_pan_genome
    Boolean? allow_paralogs_core
    String? output_gene_presence
    Int? translation_table
    Int? number_of_threads
    Boolean? verbose_output_stdout
  }
  command <<<
    pan_genome_post_analysis \
      ~{true="-a" false="" delete_intermediate_files} \
      ~{true="-b" false="" create_r_plots} \
      ~{if defined(clusters_filename) then ("-c " +  '"' + clusters_filename + '"') else ""} \
      ~{if defined(cd) then ("-cd " +  '"' + cd + '"') else ""} \
      ~{true="-d" false="" do_split_groups} \
      ~{true="-e" false="" add_inference_values} \
      ~{if defined(file_protein_filenames) then ("-f " +  '"' + file_protein_filenames + '"') else ""} \
      ~{if defined(maximum_number_clusters) then ("-g " +  '"' + maximum_number_clusters + '"') else ""} \
      ~{if defined(file_gff_filenames) then ("-i " +  '"' + file_gff_filenames + '"') else ""} \
      ~{true="-m" false="" core_gene_alignement} \
      ~{true="-n" false="" fast_core_gene} \
      ~{if defined(clusters_output_filename) then ("-o " +  '"' + clusters_output_filename + '"') else ""} \
      ~{if defined(output_pan_genome) then ("-p " +  '"' + output_pan_genome + '"') else ""} \
      ~{true="-q" false="" allow_paralogs_core} \
      ~{if defined(output_gene_presence) then ("-s " +  '"' + output_gene_presence + '"') else ""} \
      ~{if defined(translation_table) then ("-t " +  '"' + translation_table + '"') else ""} \
      ~{if defined(number_of_threads) then ("-z " +  '"' + number_of_threads + '"') else ""} \
      ~{true="-v" false="" verbose_output_stdout}
  >>>
  parameter_meta {
    delete_intermediate_files: "dont delete intermediate files"
    create_r_plots: "dont create R plots"
    clusters_filename: "clusters filename [_clustered.clstr]"
    cd: "percentage of isolates a gene must be in to be core [0.99]"
    do_split_groups: "dont split groups"
    add_inference_values: "add inference values to gene presence and absence spreadsheet"
    file_protein_filenames: "file of protein filenames [_fasta_files]"
    maximum_number_clusters: "maximum number of clusters [50000]"
    file_gff_filenames: "file of GFF filenames [_gff_files]"
    core_gene_alignement: "core gene alignement with PRANK"
    fast_core_gene: "fast core gene alignement with MAFFT instead of PRANK"
    clusters_output_filename: "clusters output filename [clustered_proteins]"
    output_pan_genome: "output pan genome filename [pan_genome.fa]"
    allow_paralogs_core: "allow paralogs in core alignment"
    output_gene_presence: "output gene presence and absence filename [gene_presence_absence.csv]"
    translation_table: "translation table [11]"
    number_of_threads: "number of threads [1]"
    verbose_output_stdout: "verbose output to STDOUT"
  }
}