version 1.0

task DebarcerBed {
  input {
    File? bam_file
    File? bed_file
    Int? min_cov
    Int? region_size
    Int? maxdepth
    Boolean? ignore_orphans
    String? stepper
  }
  command <<<
    debarcer bed \
      ~{if defined(bam_file) then ("--Bamfile " +  '"' + bam_file + '"') else ""} \
      ~{if defined(bed_file) then ("--Bedfile " +  '"' + bed_file + '"') else ""} \
      ~{if defined(min_cov) then ("--MinCov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(region_size) then ("--RegionSize " +  '"' + region_size + '"') else ""} \
      ~{if defined(maxdepth) then ("--MaxDepth " +  '"' + maxdepth + '"') else ""} \
      ~{if (ignore_orphans) then "--IgnoreOrphans" else ""} \
      ~{if defined(stepper) then ("--Stepper " +  '"' + stepper + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/debarcer:2.1.3--py_0"
  }
  parameter_meta {
    bam_file: "Path to the BAM file"
    bed_file: "Path to the output bed file"
    min_cov: "Minimum read depth value at all positions in genomic\\ninterval"
    region_size: "Minimum length of the genomic interval (in bp)"
    maxdepth: "Maximum read depth. Default is 1000000"
    ignore_orphans: "Ignore orphans (paired reads that are not in a proper\\npair). Default is False, becomes True if used"
    stepper: "Filter or include reads in the pileup. Options all:\\nskip reads with BAM_FUNMAP, BAM_FSECONDARY,\\nBAM_FQCFAIL, BAM_FDUP flags, nofilter: uses every\\nsingle read turning off any filtering\\n"
  }
  output {
    File out_stdout = stdout()
    File out_bed_file = "${in_bed_file}"
  }
}