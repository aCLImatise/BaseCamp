version 1.0

task DebarcerRun {
  input {
    Directory? outdir
    File? config
    File? bam_file
    File? reference
    Int? fam_size
    File? bed_file
    String? count_threshold
    String? percent_threshold
    String? position
    String? distance
    String? ref_threshold
    String? alternative_threshold
    Int? filter_threshold
    Int? maxdepth
    Boolean? truncate
    Boolean? ignore_orphans
    Boolean? ignore
    Boolean? merge
    Boolean? plot
    Boolean? report
    String? extension
    Directory? sample
    String? project
    Int? memory
    File? my_python
    File? my_debar_cer
    Int? min_cov
    Int? min_ratio
    String? minum_is
    Int? min_children
    String? stepper
    String? separator
    Int? quality
    Int? read_count
    String used
  }
  command <<<
    debarcer run \
      ~{used} \
      ~{if defined(outdir) then ("--Outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(config) then ("--Config " +  '"' + config + '"') else ""} \
      ~{if defined(bam_file) then ("--Bamfile " +  '"' + bam_file + '"') else ""} \
      ~{if defined(reference) then ("--Reference " +  '"' + reference + '"') else ""} \
      ~{if defined(fam_size) then ("--Famsize " +  '"' + fam_size + '"') else ""} \
      ~{if defined(bed_file) then ("--Bedfile " +  '"' + bed_file + '"') else ""} \
      ~{if defined(count_threshold) then ("--CountThreshold " +  '"' + count_threshold + '"') else ""} \
      ~{if defined(percent_threshold) then ("--PercentThreshold " +  '"' + percent_threshold + '"') else ""} \
      ~{if defined(position) then ("--Position " +  '"' + position + '"') else ""} \
      ~{if defined(distance) then ("--Distance " +  '"' + distance + '"') else ""} \
      ~{if defined(ref_threshold) then ("--RefThreshold " +  '"' + ref_threshold + '"') else ""} \
      ~{if defined(alternative_threshold) then ("--AlternativeThreshold " +  '"' + alternative_threshold + '"') else ""} \
      ~{if defined(filter_threshold) then ("--FilterThreshold " +  '"' + filter_threshold + '"') else ""} \
      ~{if defined(maxdepth) then ("--MaxDepth " +  '"' + maxdepth + '"') else ""} \
      ~{if (truncate) then "--Truncate" else ""} \
      ~{if (ignore_orphans) then "--IgnoreOrphans" else ""} \
      ~{if (ignore) then "--Ignore" else ""} \
      ~{if (merge) then "--Merge" else ""} \
      ~{if (plot) then "--Plot" else ""} \
      ~{if (report) then "--Report" else ""} \
      ~{if defined(extension) then ("--Extension " +  '"' + extension + '"') else ""} \
      ~{if defined(sample) then ("--Sample " +  '"' + sample + '"') else ""} \
      ~{if defined(project) then ("--Project " +  '"' + project + '"') else ""} \
      ~{if defined(memory) then ("--Memory " +  '"' + memory + '"') else ""} \
      ~{if defined(my_python) then ("--MyPython " +  '"' + my_python + '"') else ""} \
      ~{if defined(my_debar_cer) then ("--MyDebarcer " +  '"' + my_debar_cer + '"') else ""} \
      ~{if defined(min_cov) then ("--MinCov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_ratio) then ("--MinRatio " +  '"' + min_ratio + '"') else ""} \
      ~{if defined(minum_is) then ("--MinUmis " +  '"' + minum_is + '"') else ""} \
      ~{if defined(min_children) then ("--MinChildren " +  '"' + min_children + '"') else ""} \
      ~{if defined(stepper) then ("--Stepper " +  '"' + stepper + '"') else ""} \
      ~{if defined(separator) then ("--Separator " +  '"' + separator + '"') else ""} \
      ~{if defined(quality) then ("--Quality " +  '"' + quality + '"') else ""} \
      ~{if defined(read_count) then ("--ReadCount " +  '"' + read_count + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/debarcer:2.1.3--py_0"
  }
  parameter_meta {
    outdir: "Output directory where subdirectories are created"
    config: "Path to the config file"
    bam_file: "Path to the BAM file"
    reference: "Path to the refeence genome"
    fam_size: "Comma-separated list of minimum umi family size to\\ncollapase on"
    bed_file: "Path to the bed file"
    count_threshold: "Base count threshold in pileup column"
    percent_threshold: "Base percent threshold in pileup column"
    position: "Umi position threshold for grouping umis together"
    distance: "Hamming distance threshold for connecting parent-\\nchildren umis"
    ref_threshold: "A position is considered variable of reference\\nfrequency is <= ref_threshold"
    alternative_threshold: "Variable position is labeled PASS if allele frequency\\n>= alt_threshold"
    filter_threshold: "Minimum number of reads to pass alternative variants"
    maxdepth: "Maximum read depth. Default is 1000000"
    truncate: "Only pileup columns in the exact region specificied\\nare returned. Default is False, becomes True is used"
    ignore_orphans: "Ignore orphans (paired reads that are not in a proper\\npair). Default is False, becomes True if used"
    ignore: "Keep the most abundant family and ignore families at\\nother positions within each group. Default is False,\\nbecomes True if used"
    merge: "Merge data, json and consensus files respectively into\\na 1 single file. Default is True, becomes False if\\nused"
    plot: "Generate figure plots. Default is True, becomes False\\nif used"
    report: "Generate report. Default is True, becomes False if"
    extension: "Figure format. Does not generate a report if pdf, even\\nwith -r True. Default is png"
    sample: "Sample name to appear to report. Optional, use Output\\ndirectory basename if not provided"
    project: "Project for submitting jobs on Univa"
    memory: "Requested memory for submitting jobs to SGE. Default\\nis 20g"
    my_python: "Path to python. Default is /.mounts/labs/PDE/Modules/s\\nw/python/Python-3.6.4/bin/python3.6"
    my_debar_cer: "Path to the file debarcer.py. Default is /.mounts/labs\\n/PDE/Modules/sw/python/Python-3.6.4/lib/python3.6/site\\n-packages/debarcer/debarcer.py"
    min_cov: "Minimum coverage value. Values below are plotted in\\nred"
    min_ratio: "Minimum children to parent umi ratio. Values below are\\nplotted in red"
    minum_is: "Minimum umi count. Values below are plotted in red"
    min_children: "Minimum children umi count. Values below are plotted\\nin red"
    stepper: "Filter or include reads in the pileup. Options all:\\nskip reads with BAM_FUNMAP, BAM_FSECONDARY,\\nBAM_FQCFAIL, BAM_FDUP flags, nofilter: uses every\\nsingle read turning off any filtering"
    separator: "String separating the UMI from the remaining of the\\nread name"
    quality: "Base quality score threshold. Bases with quality\\nscores below the threshold are not used in the\\nconsensus. Default is 25"
    read_count: "Minimum number of reads in region required for\\ngrouping. Default is 0\\n"
    used: "-cl, --Call           Convert consensus files to VCF format. Default is"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    Directory out_sample = "${in_sample}"
  }
}