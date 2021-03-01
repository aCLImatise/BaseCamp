version 1.0

task StrainTrackingpyIdMarkers {
  input {
    File? in_dir
    File? out
    File? samples
    Float? min_freq
    Int? min_reads
    Int? allele_prev
    Int? max_sites
  }
  command <<<
    strain_tracking_py id_markers \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(min_reads) then ("--min_reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(allele_prev) then ("--allele_prev " +  '"' + allele_prev + '"') else ""} \
      ~{if defined(max_sites) then ("--max_sites " +  '"' + max_sites + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dir: "path to input snps directory for one species (contains files 'snps_*.txt')\\nrequires having run 'merge_midas.py snps'"
    out: "path to output file containing list of markers"
    samples: "comma-separated list of training samples\\nby default, all samples are used"
    min_freq: "minimum allele frequency (proportion of reads) per site for SNP calling (0.10)"
    min_reads: "minimum number of reads supporting allele per site for SNP calling (3)"
    allele_prev: "maximum occurences of allele across samples (1)\\nsetting this to 1 (default) will pick alleles found in exactly 1 sample"
    max_sites: "maximum number of genomic sites to process (use all)\\nuseful for quick tests"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}