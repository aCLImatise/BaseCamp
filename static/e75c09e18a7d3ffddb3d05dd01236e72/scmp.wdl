version 1.0

task Scmp {
  input {
    String? input_file
    Boolean? arg_output_file
    Boolean? arg_reference_fasta
    Boolean? arg_start_location
    String? qq_field
    Boolean? arg_bed_file
    String? limit_records
    String? message_every
    Boolean? arg_apply_filtering
    String? threads
    String? block_size
    String? min_var_distance
    Boolean? arg_allele_how
    String? distance_max_dist
    String? enumerate_max_enum
  }
  command <<<
    scmp \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-l" false="" arg_start_location} \
      ~{if defined(qq_field) then ("--qq-field " +  '"' + qq_field + '"') else ""} \
      ~{true="-O" false="" arg_bed_file} \
      ~{if defined(limit_records) then ("--limit-records " +  '"' + limit_records + '"') else ""} \
      ~{if defined(message_every) then ("--message-every " +  '"' + message_every + '"') else ""} \
      ~{true="-f" false="" arg_apply_filtering} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(block_size) then ("--blocksize " +  '"' + block_size + '"') else ""} \
      ~{if defined(min_var_distance) then ("--min-var-distance " +  '"' + min_var_distance + '"') else ""} \
      ~{true="-M" false="" arg_allele_how} \
      ~{if defined(distance_max_dist) then ("--distance-maxdist " +  '"' + distance_max_dist + '"') else ""} \
      ~{if defined(enumerate_max_enum) then ("--enumerate-maxenum " +  '"' + enumerate_max_enum + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input VCF file. Must have exactly two  samples, the first sample will be used  as truth, the second one as query. This can be obtained using bcftools:  bcftools merge truth.vcf.gz  query.vcf.gz --force-samples"
    arg_output_file: "[ --output-file ] arg              The output file name (VCF / BCF /  VCF.gz)."
    arg_reference_fasta: "[ --reference ] arg                The reference fasta file (needed only  for VCF output)."
    arg_start_location: "[ --location ] arg                 Start location."
    qq_field: "QQ field name -- this can be QUAL, an  INFO or FORMAT field name"
    arg_bed_file: "[ --only ] arg                     Bed file of locations (equivalent to -R in bcftools)"
    limit_records: "Maximum umber of records to process"
    message_every: "Print a message every N records."
    arg_apply_filtering: "[ --apply-filters ] arg            Apply filtering in VCF."
    threads: "Number of threads to use."
    block_size: "Number of variants per block."
    min_var_distance: "Minimum distance between variants  allowed to end up in separate blocks"
    arg_allele_how: "[ --comparison-mode ] arg (=allele) How to compare variants: allele  (default) / distance / enumerate"
    distance_max_dist: "(=50)          For distance comparison, this is the  maximum distance between variants s.t.  they get matched."
    enumerate_max_enum: "(=65536)      For haplotype enumeration comparison,  this is the number of possibilities to  enumerate before giving up"
  }
}