version 1.0

task StrainTrackingpyTrackMarkers {
  input {
    File? in_dir
    File? out
    File? markers
    Float? min_freq
    Int? min_reads
    Int? max_sites
    Int? max_samples
  }
  command <<<
    strain_tracking_py track_markers \
      ~{if defined(in_dir) then ("--indir " +  '"' + in_dir + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(markers) then ("--markers " +  '"' + markers + '"') else ""} \
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(min_reads) then ("--min_reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(max_sites) then ("--max_sites " +  '"' + max_sites + '"') else ""} \
      ~{if defined(max_samples) then ("--max_samples " +  '"' + max_samples + '"') else ""}
  >>>
  parameter_meta {
    in_dir: "path to input snps directory for one species (contains files 'snps_*.txt')\\nrequires having run 'merge_midas.py snps'"
    out: "path to output file with marker sharing between all sample-pairs"
    markers: "path to list of marker alleles output by 'strain_tracking.py id_markers'"
    min_freq: "minimum allele frequency (proportion of reads) per site for SNP calling (0.10)"
    min_reads: "minimum number of reads supporting allele per site for SNP calling (3)"
    max_sites: "maximum number of sites to process (use all)\\nuseful for quick tests"
    max_samples: "maximum number of samples to process (use all)\\nuseful for quick tests"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_markers = "${in_markers}"
  }
}