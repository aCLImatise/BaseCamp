version 1.0

task CnvkitpyBatch {
  input {
    String? seq_method
    String? segment_method
    Boolean? haploid_x_reference
    Boolean? count_reads
    Boolean? drop_low_coverage
    Boolean? number_subprocesses_used
    File? r_script_path
    Boolean? normal_samples_used
    File? fast_a
    File? targets
    File? anti_targets
    File? annotate
    Boolean? short_names
    File? access
    Int? anti_target_avg_size
    Int? anti_target_min_size
    File? output_reference
    Boolean? cluster
    Int? reference
    Directory? output_dir
    Boolean? create_wholegenome_profile
    Boolean? diagram
    String bam_files
    String consistent_dot
  }
  command <<<
    cnvkit_py batch \
      ~{bam_files} \
      ~{consistent_dot} \
      ~{if defined(seq_method) then ("--seq-method " +  '"' + seq_method + '"') else ""} \
      ~{if defined(segment_method) then ("--segment-method " +  '"' + segment_method + '"') else ""} \
      ~{if (haploid_x_reference) then "--haploid-x-reference" else ""} \
      ~{if (count_reads) then "--count-reads" else ""} \
      ~{if (drop_low_coverage) then "--drop-low-coverage" else ""} \
      ~{if (number_subprocesses_used) then "-p" else ""} \
      ~{if defined(r_script_path) then ("--rscript-path " +  '"' + r_script_path + '"') else ""} \
      ~{if (normal_samples_used) then "-n" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(anti_targets) then ("--antitargets " +  '"' + anti_targets + '"') else ""} \
      ~{if defined(annotate) then ("--annotate " +  '"' + annotate + '"') else ""} \
      ~{if (short_names) then "--short-names" else ""} \
      ~{if defined(access) then ("--access " +  '"' + access + '"') else ""} \
      ~{if defined(anti_target_avg_size) then ("--antitarget-avg-size " +  '"' + anti_target_avg_size + '"') else ""} \
      ~{if defined(anti_target_min_size) then ("--antitarget-min-size " +  '"' + anti_target_min_size + '"') else ""} \
      ~{if defined(output_reference) then ("--output-reference " +  '"' + output_reference + '"') else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (create_wholegenome_profile) then "--scatter" else ""} \
      ~{if (diagram) then "--diagram" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cnvkit:0.9.8--py_0"
  }
  parameter_meta {
    seq_method: "Sequencing assay type: hybridization capture\\n('hybrid'), targeted amplicon sequencing ('amplicon'),\\nor whole genome sequencing ('wgs'). Determines whether\\nand how to use antitarget bins. [Default: hybrid]"
    segment_method: "Method used in the 'segment' step. [Default: cbs]"
    haploid_x_reference: "Use or assume a male reference (i.e. female samples\\nwill have +1 log-CNR of chrX; otherwise male samples\\nwould have -1 chrX)."
    count_reads: "Get read depths by counting read midpoints within each\\nbin. (An alternative algorithm)."
    drop_low_coverage: "Drop very-low-coverage bins before segmentation to\\navoid false-positive deletions in poor-quality tumor\\nsamples."
    number_subprocesses_used: "[PROCESSES], --processes [PROCESSES]\\nNumber of subprocesses used to running each of the BAM\\nfiles in parallel. Without an argument, use the\\nmaximum number of available CPUs. [Default: process\\neach BAM in serial]"
    r_script_path: "Path to the Rscript excecutable to use for running R\\ncode. Use this option to specify a non-default R\\ninstallation. [Default: Rscript]"
    normal_samples_used: "[FILES [FILES ...]], --normal [FILES [FILES ...]]\\nNormal samples (.bam) used to construct the pooled,\\npaired, or flat reference. If this option is used but\\nno filenames are given, a \\\"flat\\\" reference will be\\nbuilt. Otherwise, all filenames following this option\\nwill be used."
    fast_a: "Reference genome, FASTA format (e.g. UCSC hg19.fa)"
    targets: "Target intervals (.bed or .list)"
    anti_targets: "Antitarget intervals (.bed or .list)"
    annotate: "Use gene models from this file to assign names to the\\ntarget regions. Format: UCSC refFlat.txt or\\nensFlat.txt file (preferred), or BED, interval list,\\nGFF, or similar."
    short_names: "Reduce multi-accession bait labels to be short and"
    access: "Regions of accessible sequence on chromosomes (.bed),\\nas output by the 'access' command."
    anti_target_avg_size: "Average size of antitarget bins (results are\\napproximate)."
    anti_target_min_size: "Minimum size of antitarget bins (smaller regions are\\ndropped)."
    output_reference: "Output filename/path for the new reference file being\\ncreated. (If given, ignores the -o/--output-dir option\\nand will write the file to the given path. Otherwise,\\n\\\"reference.cnn\\\" will be created in the current\\ndirectory or specified output directory.)"
    cluster: "Calculate and use cluster-specific summary stats in\\nthe reference pool to normalize samples."
    reference: "Copy number reference file (.cnn)."
    output_dir: "Output directory."
    create_wholegenome_profile: "Create a whole-genome copy ratio profile as a PDF\\nscatter plot."
    diagram: "Create an ideogram of copy ratios on chromosomes as a\\nPDF.\\n"
    bam_files: "Mapped sequence reads (.bam)"
    consistent_dot: "--target-avg-size TARGET_AVG_SIZE"
  }
  output {
    File out_stdout = stdout()
    File out_output_reference = "${in_output_reference}"
    Directory out_output_dir = "${in_output_dir}"
  }
}