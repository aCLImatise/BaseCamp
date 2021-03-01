version 1.0

task TallyVariantsFromMultipleVcfspy {
  input {
    Array[String] vcf_files
    Array[String] bam_files
    Array[String] sample_names
    Array[String] filter_labels
    File? bed_inclusion
    Int? num_threads
    Int? minimum_samples
  }
  command <<<
    tally_variants_from_multiple_vcfs_py \
      ~{if defined(vcf_files) then ("--vcf-files " +  '"' + vcf_files + '"') else ""} \
      ~{if defined(bam_files) then ("--bam-files " +  '"' + bam_files + '"') else ""} \
      ~{if defined(sample_names) then ("--sample-names " +  '"' + sample_names + '"') else ""} \
      ~{if defined(filter_labels) then ("--filter-labels " +  '"' + filter_labels + '"') else ""} \
      ~{if defined(bed_inclusion) then ("--bed-inclusion " +  '"' + bed_inclusion + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(minimum_samples) then ("--minimum-samples " +  '"' + minimum_samples + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_files: "multiple vcf files (default: None)"
    bam_files: "multiple bam files (default: None)"
    sample_names: "names for the vcf files (default: None)"
    filter_labels: "Filter labels to count (default: ['PASS'])"
    bed_inclusion: "Bed file to include. (default: None)"
    num_threads: "threads (default: 1)"
    minimum_samples: "Print out only if at least this number of vcf files\\nhave the variant. (default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}