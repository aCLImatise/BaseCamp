version 1.0

task Preprocess {
  input {
    File? input_vcf
    Boolean? arg_output_variant
    Boolean? arg_reference_fasta
    Boolean? arg_location_start
    Boolean? arg_subset_ofregions
    Boolean? subset_oftargets_streaming
    String? progress
    Int? haploid_x
    String? progress_seconds
    Int? limit
    Boolean? arg_apply_normalisations
    Boolean? arg_leftshift_indel
  }
  command <<<
    preprocess \
      ~{if defined(input_vcf) then ("--input-vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if (arg_output_variant) then "-o" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_location_start) then "-l" else ""} \
      ~{if (arg_subset_ofregions) then "-R" else ""} \
      ~{if (subset_oftargets_streaming) then "-T" else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(haploid_x) then ("--haploid-x " +  '"' + haploid_x + '"') else ""} \
      ~{if defined(progress_seconds) then ("--progress-seconds " +  '"' + progress_seconds + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (arg_apply_normalisations) then "-V" else ""} \
      ~{if (arg_leftshift_indel) then "-L" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0"
  }
  parameter_meta {
    input_vcf: "VCF files to preprocess (use file:sample for\\na specific sample column)."
    arg_output_variant: "[ --output-vcf ] arg          Output variant comparison results to VCF."
    arg_reference_fasta: "[ --reference ] arg           The reference fasta file."
    arg_location_start: "[ --location ] arg            The location to start at."
    arg_subset_ofregions: "[ --regions ] arg             Use a bed file for getting a subset of\\nregions (traversal via tabix)."
    subset_oftargets_streaming: "[ --targets ] arg             Use a bed file for getting a subset of\\ntargets (streaming the whole file, ignoring\\nthings outside the bed regions)."
    progress: "Set to true to output progress information."
    haploid_x: "Expand GTs on chrX: turn 1 into 1/1"
    progress_seconds: "Output progress information every n seconds."
    limit: "Maximum number of records to process."
    arg_apply_normalisations: "[ --preprocess-variants ] arg Apply variant normalisations, trimming,\\nrealignment for complex variants (off by\\ndefault)."
    arg_leftshift_indel: "[ --leftshift ] arg           Left-shift indel alleles (off by default)."
  }
  output {
    File out_stdout = stdout()
  }
}