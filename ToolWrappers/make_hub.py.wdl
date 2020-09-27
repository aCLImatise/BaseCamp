version 1.0

task MakeHubpy {
  input {
    Boolean? print_usage_examples
    String? email
    File? genome
    String? long_label
    Directory? short_label
    Array[String] bam
    Int? cores
    Boolean? display_bam_as_bam
    File? gem_oma_filtered_predictions
    Directory? braker_out_dir
    File? maker_gff
    File? glimmer_gff
    File? snap_gff
    File? an_not
    Array[String] gene_track
    Boolean? add_track
    Directory? outdir
    Boolean? no_repeats
    File? sam_tools_path
    Int? bam_two_wig_path
    File? hints
    File? train_genes
    File? genemark
    File? aug_ab_initio
    File? aug_hints
    File? aug_ab_initio_utr
    File? aug_hints_utr
    String? latin_name
    Int? assembly_version
    Boolean? no_tmp_rm
    Boolean? no_gene_pred_to_big_gene_pred
    Int? verbosity
  }
  command <<<
    make_hub_py \
      ~{if (print_usage_examples) then "--printUsageExamples" else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(long_label) then ("--long_label " +  '"' + long_label + '"') else ""} \
      ~{if defined(short_label) then ("--short_label " +  '"' + short_label + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (display_bam_as_bam) then "--display_bam_as_bam" else ""} \
      ~{if defined(gem_oma_filtered_predictions) then ("--gemoma_filtered_predictions " +  '"' + gem_oma_filtered_predictions + '"') else ""} \
      ~{if defined(braker_out_dir) then ("--braker_out_dir " +  '"' + braker_out_dir + '"') else ""} \
      ~{if defined(maker_gff) then ("--maker_gff " +  '"' + maker_gff + '"') else ""} \
      ~{if defined(glimmer_gff) then ("--glimmer_gff " +  '"' + glimmer_gff + '"') else ""} \
      ~{if defined(snap_gff) then ("--snap_gff " +  '"' + snap_gff + '"') else ""} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(gene_track) then ("--gene_track " +  '"' + gene_track + '"') else ""} \
      ~{if (add_track) then "--add_track" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (no_repeats) then "--no_repeats" else ""} \
      ~{if defined(sam_tools_path) then ("--SAMTOOLS_PATH " +  '"' + sam_tools_path + '"') else ""} \
      ~{if defined(bam_two_wig_path) then ("--BAM2WIG_PATH " +  '"' + bam_two_wig_path + '"') else ""} \
      ~{if defined(hints) then ("--hints " +  '"' + hints + '"') else ""} \
      ~{if defined(train_genes) then ("--traingenes " +  '"' + train_genes + '"') else ""} \
      ~{if defined(genemark) then ("--genemark " +  '"' + genemark + '"') else ""} \
      ~{if defined(aug_ab_initio) then ("--aug_ab_initio " +  '"' + aug_ab_initio + '"') else ""} \
      ~{if defined(aug_hints) then ("--aug_hints " +  '"' + aug_hints + '"') else ""} \
      ~{if defined(aug_ab_initio_utr) then ("--aug_ab_initio_utr " +  '"' + aug_ab_initio_utr + '"') else ""} \
      ~{if defined(aug_hints_utr) then ("--aug_hints_utr " +  '"' + aug_hints_utr + '"') else ""} \
      ~{if defined(latin_name) then ("--latin_name " +  '"' + latin_name + '"') else ""} \
      ~{if defined(assembly_version) then ("--assembly_version " +  '"' + assembly_version + '"') else ""} \
      ~{if (no_tmp_rm) then "--no_tmp_rm" else ""} \
      ~{if (no_gene_pred_to_big_gene_pred) then "--no_genePredToBigGenePred" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    print_usage_examples: "Print usage examples for make_hub.py"
    email: "Contact e-mail adress for assembly hub"
    genome: "Genome fasta file (possibly softmasked)"
    long_label: "Long label for hub, e.g. species name in english and\\nlatin, pass in single quotation marks, e.g.\\n--long_label 'Dorosphila melanogster (fruit fly)'"
    short_label: "Short label for hub, will also be used as directory\\nname for hub, should not contain spaces or special\\ncharacters, e.g. --short_label fly"
    bam: "BAM file(s) - space separated - with RNA-Seq\\ninformation, by default will be displayed as bigWig"
    cores: "Number of cores for samtools sort processes"
    display_bam_as_bam: "Display BAM file(s) as bam tracks"
    gem_oma_filtered_predictions: "GFF3 output file of Gemoma"
    braker_out_dir: "BRAKER output directory with GTF files"
    maker_gff: "MAKER2 output file in GFF3 format"
    glimmer_gff: "GFF3 output file of GlimmerHMM"
    snap_gff: "SNAP output file in GFF3 format"
    an_not: "GTF file with reference annotation"
    gene_track: "Gene track with user specified label, argument must be\\nformatted as follows: --gene_track file.gtf tracklabel"
    add_track: "Add track(s) to existing hub"
    outdir: "output directory to write hub to"
    no_repeats: "Disable repeat track generation from softmasked genome\\nsequence (saves time)"
    sam_tools_path: "Path to samtools executable"
    bam_two_wig_path: "Path to bam2wig executable"
    hints: "GFF file with AUGUSTUS hints"
    train_genes: "GTF file with training genes"
    genemark: "GTF file with GeneMark predictions"
    aug_ab_initio: "GTF file with ab initio AUGUSTUS predictions"
    aug_hints: "GTF file with AUGUSTUS predictions with hints"
    aug_ab_initio_utr: "GTF file with ab initio AUGUSTUS predictions with UTRs"
    aug_hints_utr: "GTF file with AUGUSTUS predictions with hints with\\nUTRs"
    latin_name: "Latin species name, e.g. \\\"Drosophila melanogaster\\\".\\nThis argument must be provided if the hub is supposed\\nto be added to the public UCSC list."
    assembly_version: "Assembly version, e.g. \\\"BDGP R4/dm3\\\". This argument\\nmust be provided if the hub is supposed to be added to\\nthe public UCSC list."
    no_tmp_rm: "Do not delete temporary files"
    no_gene_pred_to_big_gene_pred: "Option for the special case in which the precompiled\\nUCSC binaries are not working on your system, and you\\ninstalled kentutils from the older ENCODE github\\nrepository; if activated, gene prediction tracks will\\nbe output to bigBed instead of bigGenePred format and\\namino acid display will not be possible in gene\\ntracks."
    verbosity: "If INT>0 verbose output log is produced\\n"
  }
  output {
    File out_stdout = stdout()
    File out_gem_oma_filtered_predictions = "${in_gem_oma_filtered_predictions}"
    Directory out_braker_out_dir = "${in_braker_out_dir}"
    File out_maker_gff = "${in_maker_gff}"
    File out_glimmer_gff = "${in_glimmer_gff}"
    File out_snap_gff = "${in_snap_gff}"
    Directory out_outdir = "${in_outdir}"
  }
}