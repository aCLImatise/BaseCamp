version 1.0

task Grafimo {
  input {
    Boolean? cores
    Boolean? path_linear_required
    Boolean? path_vcf_file
    Boolean? path_vg_format
    Boolean? path_directory_containing
    File? bed_file
    Array[Int] motif
    Boolean? chromosomes_vg_built
    Boolean? path_background_file
    Boolean? pseudocount_add_motif
    Boolean? threshold_applied_ispossible
    Boolean? no_q_value
    Boolean? no_reverse
    Boolean? recomb
    Boolean? re_index
    Boolean? q_value_t
    Directory? top_graphs
    Boolean? verbose
    String option_accpets_values
    String strand
    String var_output
  }
  command <<<
    grafimo \
      ~{option_accpets_values} \
      ~{strand} \
      ~{var_output} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (path_linear_required) then "-l" else ""} \
      ~{if (path_vcf_file) then "-v" else ""} \
      ~{if (path_vg_format) then "-g" else ""} \
      ~{if (path_directory_containing) then "-d" else ""} \
      ~{if defined(bed_file) then ("--bedfile " +  '"' + bed_file + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if (chromosomes_vg_built) then "-c" else ""} \
      ~{if (path_background_file) then "-k" else ""} \
      ~{if (pseudocount_add_motif) then "-p" else ""} \
      ~{if (threshold_applied_ispossible) then "-t" else ""} \
      ~{if (no_q_value) then "--no-qvalue" else ""} \
      ~{if (no_reverse) then "--no-reverse" else ""} \
      ~{if (recomb) then "--recomb" else ""} \
      ~{if (re_index) then "--reindex" else ""} \
      ~{if (q_value_t) then "--qvalueT" else ""} \
      ~{if (top_graphs) then "--top-graphs" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/grafimo:1.1.3--py38h0731a9c_0"
  }
  parameter_meta {
    cores: "[NCORES]      Number of cores to use. The default value is 0 (auto-\\ndetection). If you chose to query the whole genome\\nvariation graph note that the default option is to use\\nonly one core to avoid memory issues"
    path_linear_required: "[LINEAR-GENOME], --linear-genome [LINEAR-GENOME]\\nPath to the linear genome (FASTA format required)"
    path_vcf_file: "[VCF], --vcf [VCF]\\nPath to the VCF file. The VCF must be compressed (e.g.\\nmyvcf.vcf.gz)"
    path_vg_format: "[GRAPH-GENOME], --graph-genome [GRAPH-GENOME]\\nPath to the VG genome graph file (VG or XG format)"
    path_directory_containing: "[GRAPH-GENOMES-DIR], --graph-genome-dir [GRAPH-GENOMES-DIR]\\nPath to a directory containing a variable number of\\nVGs graph genomes (VG or XG format)"
    bed_file: "Path to the BED file containing the regions to scan"
    motif: "Path to the motif file (JASPAR or MEME format\\nrequired)"
    chromosomes_vg_built: "[1 [X ...]], --chroms [1 [X ...]]\\nChromosomes for which the VG will be built or in which\\nGRAFIMO will search the given motif. To consider all\\nthe chromosomes, just skip this argument. This\\nargument can be used during the building of VGs or\\nduring their scan for the occurrences of the given\\nmotif"
    path_background_file: "[BACKGROUND], --bgfile [BACKGROUND]\\nPath to the background file [optional]"
    pseudocount_add_motif: "[PSEUDOCOUNT], --pseudo [PSEUDOCOUNT]\\nPseudocount to add to motif counts [optional]"
    threshold_applied_ispossible: "[THRESHOLD], --threshold [THRESHOLD]\\nThreshold that will be applied on the P-values (by\\ndefault) of each found motif occurrence. It is\\npossible to apply the threshold on the q-values using\\nthe -q (--qvalueT) option. Default is 1e-4 [optional]"
    no_q_value: "With this parameter the q-values will not be computed"
    no_reverse: "With this parameter GRAFIMO will scan only the forward"
    recomb: "While scanning the genome variation graph for the\\ngiven motif occurrences will be considered all\\npossible recombinants that can be obtained with the\\ngenomic variants used to build the VG"
    re_index: "When building the genome variation graph the VCF will\\nbe indexed with tabix, even if its TBI file it is\\nalready available. This option can only be used with\\nthe 'buildvg' pipeline"
    q_value_t: "The threshold will be applied on the q-values, rather\\nthan the P-values"
    top_graphs: "[GRAPHS_NUM]\\nThe PNG image of the regions containing the top\\nGRAPHS_NUM sequences (sorted by P-value) will be\\nstored in the output directory"
    verbose: "Output a lot of additional information about the\\nexecution\\n"
    option_accpets_values: "This option accpets only two values: 'buildvg' or\\n'findmotif'. This option is mandatory. When used\\n'buildvg', GRAFIMO will compute the genome variation\\ngraph for each chromosome or a user defined subset,\\nfrom the given reference genome and VCF file. When\\nused 'findmotif' GRAFIMO will scan a given VG or all\\nthe VGs contained in a given directory, for the given\\nmotif occurrences"
    strand: "-f, --text-only       Print the results in TSV directly to the standard"
    var_output: "-o [OUTDIR], --out [OUTDIR]"
  }
  output {
    File out_stdout = stdout()
    Directory out_top_graphs = "${in_top_graphs}"
  }
}