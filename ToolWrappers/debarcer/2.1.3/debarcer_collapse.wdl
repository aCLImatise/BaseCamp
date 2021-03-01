version 1.0

task DebarcerCollapse {
  input {
    File? config
    Directory? outdir
    File? bam_file
    File? reference
    Int? region
    File? umi
    Int? fam_size
    String? count_threshold
    String? percent_threshold
    String? position
    Int? maxdepth
    String? truncate
    String? ignore_orphans
    String? stepper
    String? separator
    Int? quality
  }
  command <<<
    debarcer collapse \
      ~{if defined(config) then ("--Config " +  '"' + config + '"') else ""} \
      ~{if defined(outdir) then ("--Outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(bam_file) then ("--Bamfile " +  '"' + bam_file + '"') else ""} \
      ~{if defined(reference) then ("--Reference " +  '"' + reference + '"') else ""} \
      ~{if defined(region) then ("--Region " +  '"' + region + '"') else ""} \
      ~{if defined(umi) then ("--Umi " +  '"' + umi + '"') else ""} \
      ~{if defined(fam_size) then ("--Famsize " +  '"' + fam_size + '"') else ""} \
      ~{if defined(count_threshold) then ("--CountThreshold " +  '"' + count_threshold + '"') else ""} \
      ~{if defined(percent_threshold) then ("--PercentThreshold " +  '"' + percent_threshold + '"') else ""} \
      ~{if defined(position) then ("--Position " +  '"' + position + '"') else ""} \
      ~{if defined(maxdepth) then ("--MaxDepth " +  '"' + maxdepth + '"') else ""} \
      ~{if defined(truncate) then ("--Truncate " +  '"' + truncate + '"') else ""} \
      ~{if defined(ignore_orphans) then ("--IgnoreOrphans " +  '"' + ignore_orphans + '"') else ""} \
      ~{if defined(stepper) then ("--Stepper " +  '"' + stepper + '"') else ""} \
      ~{if defined(separator) then ("--Separator " +  '"' + separator + '"') else ""} \
      ~{if defined(quality) then ("--Quality " +  '"' + quality + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/debarcer:2.1.3--py_0"
  }
  parameter_meta {
    config: "Path to the config file"
    outdir: "Output directory where subdirectories are created"
    bam_file: "Path to the BAM file"
    reference: "Path to the refeence genome"
    region: "Region coordinates to search for UMIs. chrN:posA-posB.\\nposA and posB are 1-based included"
    umi: "Path to the .umis file"
    fam_size: "Comma-separated list of minimum umi family size to\\ncollapase on"
    count_threshold: "Base count threshold in pileup column"
    percent_threshold: "Majority rule consensus threshold in pileup column"
    position: "Umi position threshold for grouping umis together"
    maxdepth: "Maximum read depth. Default is 1000000"
    truncate: "If truncate is True and a region is given, only pileup\\ncolumns in the exact region specificied are returned.\\nDefault is False"
    ignore_orphans: "Ignore orphans (paired reads that are not in a proper\\npair). Default is False"
    stepper: "Filter or include reads in the pileup. Options all:\\nskip reads with BAM_FUNMAP, BAM_FSECONDARY,\\nBAM_FQCFAIL, BAM_FDUP flags, nofilter: uses every\\nsingle read turning off any filtering"
    separator: "String separating the UMI from the remaining of the\\nread name"
    quality: "Base quality score threshold. Bases with quality\\nscores below the threshold are not used in the\\nconsensus. Default is 25\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}