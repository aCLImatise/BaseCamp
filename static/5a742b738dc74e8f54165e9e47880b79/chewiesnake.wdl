version 1.0

task Chewiesnake {
  input {
    String? prodigal
    File? sample_list
    Directory? working_directory
    File? cond_a_prefix
    Boolean? reads
    File? scheme
    Float? bsr_threshold
    Int? size_threshold
    Int? distance_method
    Int? clustering_method
    Int? distance_threshold
    Int? address_range
    Boolean? report
    Boolean? comparison
    File? comparison_db
    Int? joining_threshold
    Boolean? remove_frame_shifts
    Int? allele_length_threshold
    Int? frameshift_mode
    Int? min_trimmed_length
    String? assembler
    String? shov_ill_output_options
    String? shov_ill_extra_opts
    String? shov_ill_modules
    Int? shov_ill_depth
    Directory? shov_ill_tmpdir
    Boolean? use_cond_a
    Boolean? cond_a_front_end
    Int? threads_sample
    Int? threads
    Boolean? dry_run
    Boolean? force_all
    Boolean? unlock
    File? logdir
  }
  command <<<
    chewiesnake \
      ~{if defined(prodigal) then ("--prodigal " +  '"' + prodigal + '"') else ""} \
      ~{if defined(sample_list) then ("--sample_list " +  '"' + sample_list + '"') else ""} \
      ~{if defined(working_directory) then ("--working_directory " +  '"' + working_directory + '"') else ""} \
      ~{if defined(cond_a_prefix) then ("--condaprefix " +  '"' + cond_a_prefix + '"') else ""} \
      ~{if (reads) then "--reads" else ""} \
      ~{if defined(scheme) then ("--scheme " +  '"' + scheme + '"') else ""} \
      ~{if defined(bsr_threshold) then ("--bsr_threshold " +  '"' + bsr_threshold + '"') else ""} \
      ~{if defined(size_threshold) then ("--size_threshold " +  '"' + size_threshold + '"') else ""} \
      ~{if defined(distance_method) then ("--distance_method " +  '"' + distance_method + '"') else ""} \
      ~{if defined(clustering_method) then ("--clustering_method " +  '"' + clustering_method + '"') else ""} \
      ~{if defined(distance_threshold) then ("--distance_threshold " +  '"' + distance_threshold + '"') else ""} \
      ~{if defined(address_range) then ("--address_range " +  '"' + address_range + '"') else ""} \
      ~{if (report) then "--report" else ""} \
      ~{if (comparison) then "--comparison" else ""} \
      ~{if defined(comparison_db) then ("--comparison_db " +  '"' + comparison_db + '"') else ""} \
      ~{if defined(joining_threshold) then ("--joining_threshold " +  '"' + joining_threshold + '"') else ""} \
      ~{if (remove_frame_shifts) then "--remove_frameshifts" else ""} \
      ~{if defined(allele_length_threshold) then ("--allele_length_threshold " +  '"' + allele_length_threshold + '"') else ""} \
      ~{if defined(frameshift_mode) then ("--frameshift_mode " +  '"' + frameshift_mode + '"') else ""} \
      ~{if defined(min_trimmed_length) then ("--min_trimmed_length " +  '"' + min_trimmed_length + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(shov_ill_output_options) then ("--shovill_output_options " +  '"' + shov_ill_output_options + '"') else ""} \
      ~{if defined(shov_ill_extra_opts) then ("--shovill_extraopts " +  '"' + shov_ill_extra_opts + '"') else ""} \
      ~{if defined(shov_ill_modules) then ("--shovill_modules " +  '"' + shov_ill_modules + '"') else ""} \
      ~{if defined(shov_ill_depth) then ("--shovill_depth " +  '"' + shov_ill_depth + '"') else ""} \
      ~{if defined(shov_ill_tmpdir) then ("--shovill_tmpdir " +  '"' + shov_ill_tmpdir + '"') else ""} \
      ~{if (use_cond_a) then "--use_conda" else ""} \
      ~{if (cond_a_front_end) then "--conda_frontend" else ""} \
      ~{if defined(threads_sample) then ("--threads_sample " +  '"' + threads_sample + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (force_all) then "--forceall" else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if defined(logdir) then ("--logdir " +  '"' + logdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chewiesnake:3.0.0--1"
  }
  parameter_meta {
    prodigal: "[--bsr_threshold BSR_THRESHOLD]"
    sample_list: "List of samples to analyze, as a two column tsv file\\nwith columns sample and assembly. Can be generated\\nwith provided script create_sampleSheet,sh"
    working_directory: "Working directory where results are saved"
    cond_a_prefix: "Path of default conda environment, enables recycling\\nbuilt environments, default is in folder conda_env in\\nrepository directory."
    reads: "Input data is reads. Assemble (using shovill) prior to\\nallele calling (default is contigs)"
    scheme: "Path to directory of the cgmlst scheme"
    bsr_threshold: "blast scoring ratio threshold to use , default = 0.6"
    size_threshold: "size threshold, default at 0.2 means alleles with size\\nvariation of +-20 percent will be tagged as ASM/ALM ,\\ndefault = 0.2"
    distance_method: "Grapetree distance method; default = 3"
    clustering_method: "The agglomeration method to be used for hierarchical\\nclustering. This should be (an unambiguous\\nabbreviation of) one of \\\"ward.D\\\", \\\"ward.D2\\\", \\\"single\\\",\\n\\\"complete\\\", \\\"average\\\" (= UPGMA), \\\"mcquitty\\\" (= WPGMA),\\n\\\"median\\\" (= WPGMC) or \\\"centroid\\\" (= UPGMC); default =\\nsingle"
    distance_threshold: "A single distance threshold for the extraction of sub-\\ntrees; default = 10"
    address_range: "A comma separated set of cutoff values for defining\\nthe clustering address (Default:\\n1,5,10,20,50,100,200,1000)"
    report: "Create html report"
    comparison: "Compare these results to pre-computed allele database"
    comparison_db: "Path to pre-computed allele database for comparison"
    joining_threshold: "A distance threshold for joining data with\\ncomparsion_db; default = 30"
    remove_frame_shifts: "remove frameshift alleles by deviating allele length"
    allele_length_threshold: "Maximum tolerated allele length deviance compared to\\nmedian allele length of locus; choose integer for\\n\\\"absolute frameshift mode and float (0..1) for\\n\\\"relative\\\" frameshift mode ; default=0.1"
    frameshift_mode: "Whether to consider absolute or relative differences\\nof allele length for frameshifts removal. Choose from\\n\\\"absolute\\\" and \\\"relative\\\", default=\\\"relative\\\""
    min_trimmed_length: "Minimum length of a read to keep, default = 15"
    assembler: "Assembler to use in shovill, choose from megahit\\nvelvet skesa spades (default: spades)"
    shov_ill_output_options: "Extra output options for shovill (default: \\\"\\\")"
    shov_ill_extra_opts: "Extra options for shovill (default: \\\"\\\")"
    shov_ill_modules: "Module options for shovill, choose from --noreadcorr\\n--trim --nostitch --nocorr --noreadcorr (default: \\\"--\\nnoreadcorr\\\")"
    shov_ill_depth: "Sub-sample --R1/--R2 to this depth. Disable with\\n--depth 0 (default: 100)"
    shov_ill_tmpdir: "Fast temporary directory (default: \\\"\\\")"
    use_cond_a: "Utilize \\\"--useconda\\\" option, i.e. all software\\ndependencies are available in a single env"
    cond_a_front_end: "Do not mamba but conda as frontend to create\\nindividual module' software environments"
    threads_sample: "Number of Threads to use per sample, default = 10"
    threads: "Number of Threads to use. Note that samples can only\\nbe processed sequentially due to the required database\\naccess. However the allele calling can be executed in\\nparallel for the different loci, default = 10"
    dry_run: "Snakemake dryrun. Only calculate graph without\\nexecuting anything"
    force_all: "Snakemake force. Force recalculation of all steps"
    unlock: "unlock snakemake"
    logdir: "Path to directory whete .snakemake output is to be\\nsaved\\n"
  }
  output {
    File out_stdout = stdout()
    File out_logdir = "${in_logdir}"
  }
}