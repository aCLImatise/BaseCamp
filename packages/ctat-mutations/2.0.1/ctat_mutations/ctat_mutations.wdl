version 1.0

task CtatMutations {
  input {
    File? path_one_left
    File? path_right_right
    Directory? out_dir
    File? reference
    File? index
    File? dbsnp_vcf
    Int? threads
    String? variant_filtering_mode
    String? variant_call_mode
    File? ref_bed
    Boolean? plot
    String? cosmic_vcf_gz
    Boolean? no_filter_rna_editing
    String? tissue_type
    String? email
    File? wdl_compatible_run
    File? cravat_annotation_header
    File? bam
    String? alignment_mode
    Boolean? base_depth
    String? star_memory
    Boolean? debug
    Directory? genome_lib_dir
    Boolean? skip_cravat
    Boolean? realign
    Boolean? no_recalibrate_bam
    Int? sequencing_platform
  }
  command <<<
    ctat_mutations \
      ~{if defined(path_one_left) then ("--left " +  '"' + path_one_left + '"') else ""} \
      ~{if defined(path_right_right) then ("--right " +  '"' + path_right_right + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(dbsnp_vcf) then ("--dbsnp_vcf " +  '"' + dbsnp_vcf + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(variant_filtering_mode) then ("--variant_filtering_mode " +  '"' + variant_filtering_mode + '"') else ""} \
      ~{if defined(variant_call_mode) then ("--variant_call_mode " +  '"' + variant_call_mode + '"') else ""} \
      ~{if defined(ref_bed) then ("--ref_bed " +  '"' + ref_bed + '"') else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if defined(cosmic_vcf_gz) then ("--cosmic_vcf_gz " +  '"' + cosmic_vcf_gz + '"') else ""} \
      ~{if (no_filter_rna_editing) then "--no_filter_rna_editing" else ""} \
      ~{if defined(tissue_type) then ("--tissue_type " +  '"' + tissue_type + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if (wdl_compatible_run) then "--wdl_compatible_run" else ""} \
      ~{if defined(cravat_annotation_header) then ("--cravat_annotation_header " +  '"' + cravat_annotation_header + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(alignment_mode) then ("--alignment_mode " +  '"' + alignment_mode + '"') else ""} \
      ~{if (base_depth) then "--base_depth" else ""} \
      ~{if defined(star_memory) then ("--star_memory " +  '"' + star_memory + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(genome_lib_dir) then ("--genome_lib_dir " +  '"' + genome_lib_dir + '"') else ""} \
      ~{if (skip_cravat) then "--skip_cravat" else ""} \
      ~{if (realign) then "--realign" else ""} \
      ~{if (no_recalibrate_bam) then "--no_recalibrate_bam" else ""} \
      ~{if defined(sequencing_platform) then ("--sequencing_platform " +  '"' + sequencing_platform + '"') else ""}
  >>>
  parameter_meta {
    path_one_left: "Path to one of the two paired RNAseq samples (left)"
    path_right_right: "Path to one of the two paired RNAseq samples (right)"
    out_dir: "output directory"
    reference: "Path to the reference genome to use in the analysis\\npipeline."
    index: "The initial index is made only from the reference\\ngenome and can be shared. If premade, supply a path\\nhere to the index directory so that it is not rebuilt\\nfor every alignment. Please provide the full path."
    dbsnp_vcf: "dbsnp vcf file for the reference genome."
    threads: "The number of threads to use for multi-threaded steps."
    variant_filtering_mode: "Specifies the variant filtering method."
    variant_call_mode: "Specifies the variant calling method to use."
    ref_bed: "BED file\\nBed file for reference genome, required only if making\\nthe mutation inspector json. If given the json file\\nwill be made. Please make sure the bed file is indexed\\nand that bed.idx file is in the same folder with the\\nsame file basename as the related bed file."
    plot: "Turns off plotting recalibration of alignments."
    cosmic_vcf_gz: "Coding Cosmic Mutation VCF annotated with Phenotype\\nInformation and zipped using bgzip."
    no_filter_rna_editing: "if enabled, turns off filtering based on known rna-\\nediting sites from radar and rediportal"
    tissue_type: "Tissue type (used in CRAVAT variant prioritation).\\nSupported classifiers can be found at\\nhttp://www.cravat.us/help.jsp)"
    email: "Email used to notify of errors associated with cravat."
    wdl_compatible_run: "Cromwell/WDL requires execution to happen relative to\\nan output directory of dynaically created without\\ngiving the directory path to the underlying\\ntools/pipelines. This requires a pipeline to use\\nrelative paths which can be dangerous outside of\\nCromwell/WDL. This will ignore any output directory\\nspecified in the command line and force the output to\\nbe relative paths. DO NOT USE outside of Cromwell/WDL."
    cravat_annotation_header: "Headers for each CRAVAT feature annotated to the VCF\\nfile (used in BCFtools)."
    bam: "Sample file in the form of a bam, if this is given NO\\nalignment will be performed; the alignment mode\\ncommand line will be ignored; let and right sample\\nfiles will be ignored. Normal pipeline processing will\\npick up directly after alignment in the pipeline with\\nthe supplied bam."
    alignment_mode: "Specifies the alignment and indexing algorithm to use."
    base_depth: "Calculates the base coverage per base."
    star_memory: "Memory limit for star index. This should be used to\\nincrease memory if needed. Reducing memory consumption\\nshould be performed with the STAR Limited mod."
    debug: "sets debug mode for logger"
    genome_lib_dir: "genome lib directory - see\\nhttp://FusionFilter.github.io for details. Uses env\\nvar CTAT_GENOME_LIB as default"
    skip_cravat: "Skips CRAVAT services."
    realign: "Turns off optional indel realignment step."
    no_recalibrate_bam: "If used, turns off gatk recalibration of bam files\\nbefore samtools variant calling."
    sequencing_platform: "Platform\\nThe sequencing platform used to generate the samples\\nchoices include ILLUMINA SLX,SOLEXA SOLID,454 COMPLETE\\nPACBIO IONTORRENT CAPILLARY ONT.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
    File out_wdl_compatible_run = "${in_wdl_compatible_run}"
  }
}