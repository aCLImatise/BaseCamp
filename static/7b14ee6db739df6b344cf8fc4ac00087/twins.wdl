version 1.0

task Twins {
  input {
    String? ref
    String? region
    String? exclude
    String? twin_one
    String? twin_two
    String? conflict_file
    Boolean? no_variable_metadata
    Boolean? murdock
    String? min_gq_x
    String? min_pos_rank_sum
    String? min_qd
    String? min_info_field
    String? max_info_field
  }
  command <<<
    twins \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(twin_one) then ("--twin1 " +  '"' + twin_one + '"') else ""} \
      ~{if defined(twin_two) then ("--twin2 " +  '"' + twin_two + '"') else ""} \
      ~{if defined(conflict_file) then ("--conflict-file " +  '"' + conflict_file + '"') else ""} \
      ~{true="--no-variable-metadata" false="" no_variable_metadata} \
      ~{true="--murdock" false="" murdock} \
      ~{if defined(min_gq_x) then ("--min-gqx " +  '"' + min_gq_x + '"') else ""} \
      ~{if defined(min_pos_rank_sum) then ("--min-pos-rank-sum " +  '"' + min_pos_rank_sum + '"') else ""} \
      ~{if defined(min_qd) then ("--min-qd " +  '"' + min_qd + '"') else ""} \
      ~{if defined(min_info_field) then ("--min-info-field " +  '"' + min_info_field + '"') else ""} \
      ~{if defined(max_info_field) then ("--max-info-field " +  '"' + max_info_field + '"') else ""}
  >>>
  parameter_meta {
    ref: "samtools reference sequence (required)"
    region: "samtools reference region (optional)"
    exclude: "name of chromosome to skip over (argument may be  specified multiple times). Exclusions will be ignored if a region argument is provided"
    twin_one: "twin/replicate 1 gvcf file"
    twin_two: "twin/replicate 2 gvcf file"
    conflict_file: "Write all conflict positions to the specified file"
    no_variable_metadata: "Remove timestamp and any other metadata from output  during validation testing"
    murdock: "If true, don't stop because of any out-of-order  position conflicts. Any out of order positions are  ignored. In case of an overlap the first observation  is used and subsequent repeats are ignored."
    min_gq_x: "If GQX value for a record is below this value, then  don't use the locus. Note that if the filter field  already contains a GQX filter, this will not 'rescue'  filtered variants when min-gqx is set very low -- this filter can only lower callability on a file. Any  records missing the GQX field will not be filtered  out. (default: 0)"
    min_pos_rank_sum: "Filter site if the INFO field contains the key  BaseQRankSum and the value is less than the minimum.  (default: no-filter)"
    min_qd: "Filter site if the INFO field contains the key QD and  the value is less than the minimum. (default:  no-filter)"
    min_info_field: "Filter records which contain an INFO key equal to  argument1, and a corresponding value less than  argument2 "
    max_info_field: "Filter records which contain an INFO key equal to  argument1, and a corresponding value greater than  argument2 "
  }
}