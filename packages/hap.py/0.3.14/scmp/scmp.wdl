version 1.0

task Scmp {
  input {
    File? input_file
    File? arg_output_file
    File? arg_reference_fasta
    Boolean? arg_start_location
    String? qq_field
    Boolean? arg_bed_file
    String? limit_records
    String? message_every
    Boolean? arg_apply_filtering
    Int? threads
    Int? block_size
    Int? min_var_distance
    Boolean? arg_allelehow_compare
    Int? distance_max_dist
    Int? enumerate_max_enum
  }
  command <<<
    scmp \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_start_location) then "-l" else ""} \
      ~{if defined(qq_field) then ("--qq-field " +  '"' + qq_field + '"') else ""} \
      ~{if (arg_bed_file) then "-O" else ""} \
      ~{if defined(limit_records) then ("--limit-records " +  '"' + limit_records + '"') else ""} \
      ~{if defined(message_every) then ("--message-every " +  '"' + message_every + '"') else ""} \
      ~{if (arg_apply_filtering) then "-f" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(block_size) then ("--blocksize " +  '"' + block_size + '"') else ""} \
      ~{if defined(min_var_distance) then ("--min-var-distance " +  '"' + min_var_distance + '"') else ""} \
      ~{if (arg_allelehow_compare) then "-M" else ""} \
      ~{if defined(distance_max_dist) then ("--distance-maxdist " +  '"' + distance_max_dist + '"') else ""} \
      ~{if defined(enumerate_max_enum) then ("--enumerate-maxenum " +  '"' + enumerate_max_enum + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0"
  }
  parameter_meta {
    input_file: "Input VCF file. Must have exactly two\\nsamples, the first sample will be used\\nas truth, the second one as query. This\\ncan be obtained using bcftools:\\nbcftools merge truth.vcf.gz\\nquery.vcf.gz --force-samples"
    arg_output_file: "[ --output-file ] arg              The output file name (VCF / BCF /\\nVCF.gz)."
    arg_reference_fasta: "[ --reference ] arg                The reference fasta file (needed only\\nfor VCF output)."
    arg_start_location: "[ --location ] arg                 Start location."
    qq_field: "QQ field name -- this can be QUAL, an\\nINFO or FORMAT field name"
    arg_bed_file: "[ --only ] arg                     Bed file of locations (equivalent to -R\\nin bcftools)"
    limit_records: "Maximum umber of records to process"
    message_every: "Print a message every N records."
    arg_apply_filtering: "[ --apply-filters ] arg            Apply filtering in VCF."
    threads: "Number of threads to use."
    block_size: "Number of variants per block."
    min_var_distance: "Minimum distance between variants\\nallowed to end up in separate blocks"
    arg_allelehow_compare: "[ --comparison-mode ] arg (=allele)\\nHow to compare variants: allele\\n(default) / distance / enumerate"
    distance_max_dist: "(=50)          For distance comparison, this is the\\nmaximum distance between variants s.t.\\nthey get matched."
    enumerate_max_enum: "(=65536)      For haplotype enumeration comparison,\\nthis is the number of possibilities to\\nenumerate before giving up\\n"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
    File out_arg_reference_fasta = "${in_arg_reference_fasta}"
  }
}