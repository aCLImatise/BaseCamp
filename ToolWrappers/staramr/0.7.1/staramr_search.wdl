version 1.0

task StaramrSearch {
  input {
    String? point_finder_organism
    String? plasmid_finder_database_type
    Directory? database
    Int? nprocs
    Boolean? ignore_invalid_files
    String? mlst_scheme
    Int? genome_size_lower_bound
    Int? genome_size_upper_bound
    Int? minimum_n_five_zero_value
    Int? minimum_contig_length
    Int? unacceptable_number_contigs
    Float? pid_threshold
    Int? percent_length_overlap_res_finder
    Int? percent_length_overlap_point_finder
    Int? percent_length_overlap_plasmid_finder
    Boolean? no_exclude_genes
    File? exclude_genes_file
    Boolean? exclude_negatives
    Boolean? exclude_resistance_phenotypes
    Boolean? report_all_blast
    Directory? output_dir
    File? output_summary
    File? output_detailed_summary
    File? output_res_finder
    File? output_point_finder
    File? output_plasmid_finder
    File? output_settings
    File? output_excel
    Directory? output_hits_dir
    File? output_mlst
    String files
  }
  command <<<
    staramr search \
      ~{files} \
      ~{if defined(point_finder_organism) then ("--pointfinder-organism " +  '"' + point_finder_organism + '"') else ""} \
      ~{if defined(plasmid_finder_database_type) then ("--plasmidfinder-database-type " +  '"' + plasmid_finder_database_type + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(nprocs) then ("--nprocs " +  '"' + nprocs + '"') else ""} \
      ~{if (ignore_invalid_files) then "--ignore-invalid-files" else ""} \
      ~{if defined(mlst_scheme) then ("--mlst-scheme " +  '"' + mlst_scheme + '"') else ""} \
      ~{if defined(genome_size_lower_bound) then ("--genome-size-lower-bound " +  '"' + genome_size_lower_bound + '"') else ""} \
      ~{if defined(genome_size_upper_bound) then ("--genome-size-upper-bound " +  '"' + genome_size_upper_bound + '"') else ""} \
      ~{if defined(minimum_n_five_zero_value) then ("--minimum-N50-value " +  '"' + minimum_n_five_zero_value + '"') else ""} \
      ~{if defined(minimum_contig_length) then ("--minimum-contig-length " +  '"' + minimum_contig_length + '"') else ""} \
      ~{if defined(unacceptable_number_contigs) then ("--unacceptable-number-contigs " +  '"' + unacceptable_number_contigs + '"') else ""} \
      ~{if defined(pid_threshold) then ("--pid-threshold " +  '"' + pid_threshold + '"') else ""} \
      ~{if defined(percent_length_overlap_res_finder) then ("--percent-length-overlap-resfinder " +  '"' + percent_length_overlap_res_finder + '"') else ""} \
      ~{if defined(percent_length_overlap_point_finder) then ("--percent-length-overlap-pointfinder " +  '"' + percent_length_overlap_point_finder + '"') else ""} \
      ~{if defined(percent_length_overlap_plasmid_finder) then ("--percent-length-overlap-plasmidfinder " +  '"' + percent_length_overlap_plasmid_finder + '"') else ""} \
      ~{if (no_exclude_genes) then "--no-exclude-genes" else ""} \
      ~{if defined(exclude_genes_file) then ("--exclude-genes-file " +  '"' + exclude_genes_file + '"') else ""} \
      ~{if (exclude_negatives) then "--exclude-negatives" else ""} \
      ~{if (exclude_resistance_phenotypes) then "--exclude-resistance-phenotypes" else ""} \
      ~{if (report_all_blast) then "--report-all-blast" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_summary) then ("--output-summary " +  '"' + output_summary + '"') else ""} \
      ~{if defined(output_detailed_summary) then ("--output-detailed-summary " +  '"' + output_detailed_summary + '"') else ""} \
      ~{if defined(output_res_finder) then ("--output-resfinder " +  '"' + output_res_finder + '"') else ""} \
      ~{if defined(output_point_finder) then ("--output-pointfinder " +  '"' + output_point_finder + '"') else ""} \
      ~{if defined(output_plasmid_finder) then ("--output-plasmidfinder " +  '"' + output_plasmid_finder + '"') else ""} \
      ~{if defined(output_settings) then ("--output-settings " +  '"' + output_settings + '"') else ""} \
      ~{if defined(output_excel) then ("--output-excel " +  '"' + output_excel + '"') else ""} \
      ~{if defined(output_hits_dir) then ("--output-hits-dir " +  '"' + output_hits_dir + '"') else ""} \
      ~{if defined(output_mlst) then ("--output-mlst " +  '"' + output_mlst + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    point_finder_organism: "The organism to use for pointfinder {salmonella, campylobacter}. Defaults to disabling search for point mutations. [None]."
    plasmid_finder_database_type: "The database type to use for plasmidfinder {gram_positive, enterobacteriaceae}. Defaults to using all available database types to search for plasmids. [None]."
    database: "The directory containing the resfinder/pointfinder/plasmidfinder databases [/usr/local/lib/python3.7/site-packages/staramr/databases/data]."
    nprocs: "The number of processing cores to use [8]."
    ignore_invalid_files: "Skips over invalid input files"
    mlst_scheme: "Specify scheme name, visit https://github.com/tseemann/mlst/blob/master/db/scheme_species_map.tab for supported scheme genus available. [None]"
    genome_size_lower_bound: "The lower bound for our genome size for the quality metrics. Defaults to 4 Mbp. [4000000]."
    genome_size_upper_bound: "The upper bound for our genome size for the quality metrics. Defaults to 6 Mbp. [6000000]."
    minimum_n_five_zero_value: "The minimum N50 value for the quality metrics. Defaults to 10000. [10000]."
    minimum_contig_length: "The minimum contig length for the quality metrics. Defaults to 300 bp. [300]."
    unacceptable_number_contigs: "The minimum, unacceptable number of contigs which are equal to or above the minimum contig length for our quality metrics. Defaults to 1000. [1000]."
    pid_threshold: "The percent identity threshold [98.0]."
    percent_length_overlap_res_finder: "The percent length overlap for resfinder results [60.0]."
    percent_length_overlap_point_finder: "The percent length overlap for pointfinder results [95.0]."
    percent_length_overlap_plasmid_finder: "The percent length overlap for resfinder results [60.0]."
    no_exclude_genes: "Disable the default exclusion of some genes from ResFinder/PointFinder/PlasmidFinder [False]."
    exclude_genes_file: "A containing a list of ResFinder/PointFinder/PlasmidFinder gene names to exclude from results [/usr/local/lib/python3.7/site-packages/staramr/databases/exclude/data/genes_to_exclude.tsv]."
    exclude_negatives: "Exclude negative results (those sensitive to antimicrobials) [False]."
    exclude_resistance_phenotypes: "Exclude predicted antimicrobial resistances [False]."
    report_all_blast: "Report all blast hits (vs. only top blast hits) [False]."
    output_dir: "The output directory for results [None]."
    output_summary: "The name of the output file containing the summary results. Not be be used with '--output-dir'. [None]"
    output_detailed_summary: "The name of the output file containing the detailed summary results. Not be be used with '--output-dir'. [None]"
    output_res_finder: "The name of the output file containing the resfinder results. Not be be used with '--output-dir'. [None]"
    output_point_finder: "The name of the output file containing the pointfinder results. Not be be used with '--output-dir'. [None]"
    output_plasmid_finder: "The name of the output file containing the plasmidfinder results. Not be be used with '--output-dir'. [None]"
    output_settings: "The name of the output file containing the settings. Not be be used with '--output-dir'. [None]"
    output_excel: "The name of the output file containing the excel results. Not be be used with '--output-dir'. [None]"
    output_hits_dir: "The name of the directory to contain the BLAST hit files. Not be be used with '--output-dir'. [None]"
    output_mlst: "The name of the output file containing the mlst results. Not be be used with '--output-dir'. [None]"
    files: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_output_summary = "${in_output_summary}"
    File out_output_detailed_summary = "${in_output_detailed_summary}"
    File out_output_res_finder = "${in_output_res_finder}"
    File out_output_point_finder = "${in_output_point_finder}"
    File out_output_plasmid_finder = "${in_output_plasmid_finder}"
    File out_output_settings = "${in_output_settings}"
    File out_output_excel = "${in_output_excel}"
    Directory out_output_hits_dir = "${in_output_hits_dir}"
    File out_output_mlst = "${in_output_mlst}"
  }
}