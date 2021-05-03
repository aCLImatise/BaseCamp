version 1.0

task Grafimo {
  input {
    Boolean? number_cpu_cores
    Boolean? verbose
    Boolean? debug
    Directory? output_directory
    Boolean? path_reference_file
    Boolean? path_vcf_becompressed
    Boolean? chrom_s_build
    Boolean? chrom_s_prefix_build
    Boolean? chrom_s_name_map_build
    Boolean? re_index
    Boolean? path_vg_pangenome
    Boolean? path_directory_containing
    File? bed_file
    Array[Int] motif
    Boolean? background_distribution_file
    Boolean? pseudocount_used_processing
    Boolean? statistical_significance_threshold
    Boolean? no_q_value
    Boolean? no_reverse
    Boolean? text_only
    Boolean? chrom_s_find
    Boolean? chrom_s_prefix_find
    Boolean? chrom_s_name_map_find
    Boolean? recomb
    Boolean? q_value_t
    Boolean? top_graphs
    String mandatory_argument_placed
  }
  command <<<
    grafimo \
      ~{mandatory_argument_placed} \
      ~{if (number_cpu_cores) then "-j" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (output_directory) then "-o" else ""} \
      ~{if (path_reference_file) then "-l" else ""} \
      ~{if (path_vcf_becompressed) then "-v" else ""} \
      ~{if (chrom_s_build) then "--chroms-build" else ""} \
      ~{if (chrom_s_prefix_build) then "--chroms-prefix-build" else ""} \
      ~{if (chrom_s_name_map_build) then "--chroms-namemap-build" else ""} \
      ~{if (re_index) then "--reindex" else ""} \
      ~{if (path_vg_pangenome) then "-g" else ""} \
      ~{if (path_directory_containing) then "-d" else ""} \
      ~{if defined(bed_file) then ("--bedfile " +  '"' + bed_file + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if (background_distribution_file) then "-k" else ""} \
      ~{if (pseudocount_used_processing) then "-p" else ""} \
      ~{if (statistical_significance_threshold) then "-t" else ""} \
      ~{if (no_q_value) then "--no-qvalue" else ""} \
      ~{if (no_reverse) then "--no-reverse" else ""} \
      ~{if (text_only) then "--text-only" else ""} \
      ~{if (chrom_s_find) then "--chroms-find" else ""} \
      ~{if (chrom_s_prefix_find) then "--chroms-prefix-find" else ""} \
      ~{if (chrom_s_name_map_find) then "--chroms-namemap-find" else ""} \
      ~{if (recomb) then "--recomb" else ""} \
      ~{if (q_value_t) then "--qvalueT" else ""} \
      ~{if (top_graphs) then "--top-graphs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/grafimo:1.1.4--py38h0dcb9f6_0"
  }
  parameter_meta {
    number_cpu_cores: "[NCORES], --cores [NCORES]\\nNumber of CPU cores to use. Use 0 to auto-detect.\\nDefault: 0. To search motifs in a whole genome\\nvariation graph the default is 1 (avoid memory\\nissues)."
    verbose: "Print additional information about GRAFIMO run."
    debug: "Enable error traceback."
    output_directory: "[OUTDIR], --out [OUTDIR]\\nOutput directory. [optional]"
    path_reference_file: "[REFERENCE-FASTA], --linear-genome [REFERENCE-FASTA]\\nPath to reference genome FASTA file."
    path_vcf_becompressed: "[VCF], --vcf [VCF]\\nPath to VCF file. Note that the VCF should be\\ncompressed (e.g. myvcf.vcf.gz)."
    chrom_s_build: "[1 [X ...]]\\nChromosomes for which construct the VG. By default\\nGRAFIMO constructs the VG for all chromsomes."
    chrom_s_prefix_build: "[CHRPREFIX]\\nPrefix to append in front of chromosome numbers. To\\nname chromosome VGs with only their number (e.g.\\n1.xg), use \\\"--chroms-prefix-build \\\"\\\" \\\". Default: ."
    chrom_s_name_map_build: "[NAME-MAP-FILE]\\nSpace or tab-separated file, containing original\\nchromosome names in the first columns and the names to\\nuse when storing corresponding VGs. By default the VGs\\nare named after the encoded chromosome (e.g. chr1.xg)."
    re_index: "Reindex the VCF file with Tabix, even if a TBI index\\nos already available."
    path_vg_pangenome: "[GENOME-GRAPH], --genome-graph [GENOME-GRAPH]\\nPath to VG pangenome variation graph (VG or XG\\nformat)."
    path_directory_containing: "[GENOME-GRAPHS-DIR], --genome-graph-dir [GENOME-GRAPHS-DIR]\\nPath to the directory containing the pangenome\\nvariation graphs to scan (VG or XG format)"
    bed_file: "BED file containing the genomic regions to scan for\\noccurrences of the input motif(s)."
    motif: "Motif Position Weight Matrix (MEME or JASPAR format)."
    background_distribution_file: "[BACKGROUND], --bgfile [BACKGROUND]\\nBackground distribution file."
    pseudocount_used_processing: "[PSEUDOCOUNT], --pseudo [PSEUDOCOUNT]\\nPseudocount used during motif PWM processing."
    statistical_significance_threshold: "[THRESHOLD], --threshold [THRESHOLD]\\nStatistical significance threshold value. By default\\nthe threshold is applied on P-values. To apply the\\nthreshold on q-values use the \\\"--qvalueT\\\" options.\\nDefault:0.0001."
    no_q_value: "If used, GRAFIMO skips q-value computation."
    no_reverse: "If used, GRAFIMO scans only the forward strand."
    text_only: "Print results to stdout."
    chrom_s_find: "[1 [X ...]]\\nScan only the specified chromosomes."
    chrom_s_prefix_find: "[CHRPREFIX]\\nPrefix shared by all chromosomes. The prefix should be\\nfollowed by the chromosome number. If chromosome VGs\\nare stored only with their chromosome number (e.g.\\n1.xg) use \\\"--chroms-prefix-fin \\\"\\\" \\\". Default: ."
    chrom_s_name_map_find: "[NAME-MAP-FILE]\\nSpace or tab-separated file, containing original\\nchromosome names in the first columns and the names\\nused to store the corresponding VGs. By default\\nGRAFIMO assumes that VGs are named after the encoded\\nchromosome (e.g. chr1.xg)."
    recomb: "Consider all the possible recombinants sequences which\\ncould be obtained from the genetic variants encoded in\\nthe VG. With this option the haplotypes encoded in the\\nVG are ignored."
    q_value_t: "Apply motif occurrence score statistical significance\\nthreshold on q-values rather than on P-values."
    top_graphs: "[GRAPHS-NUM]\\nStore the PNG image of the top \\\"GRAPHS-NUM\\\" regions of\\nthe VG (motif occurrences sorted by increasing\\nP-value).\\n"
    mandatory_argument_placed: "Mandatory argument placed immediately after \\\"grafimo\\\".\\nOnly two values are accepted: \\\"buildvg\\\" and\\n\\\"findmotif\\\". When called \\\"grafimo buildvg\\\", the\\nsoftware will compute the genome variation graph from\\ninput data (see \\\"buildvg options\\\" section below for\\nmore arguments). When called \\\"grafimo findmotif\\\", the\\nsoftware will scan the input VG(s) for potential\\noccurrences of the input motif(s) (see \\\"findmotif\\noption\\\" section below for more arguments)."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}