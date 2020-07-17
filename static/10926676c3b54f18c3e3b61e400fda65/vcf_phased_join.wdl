version 1.0

task VcfPhasedJoin {
  input {
    String? min_join_quality
    File? list
    File? output_file_name
    String? min_pq
    String a_dot_vcf
    String b_dot_vcf
    String cdot_vcf
  }
  command <<<
    vcf-phased-join \
      ~{a_dot_vcf} \
      ~{b_dot_vcf} \
      ~{cdot_vcf} \
      ~{if defined(min_join_quality) then ("--min-join-quality " +  '"' + min_join_quality + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(min_pq) then ("--min-PQ " +  '"' + min_pq + '"') else ""}
  >>>
  parameter_meta {
    min_join_quality: "Quality threshold for gluing the pre-phased blocks together [10]"
    list: "List of VCFs to join."
    output_file_name: "Output file name. When \"-\" is supplied, STDOUT and STDERR will be used"
    min_pq: "Break pre-phased segments if PQ value is lower in input VCFs [0.6]"
    a_dot_vcf: ""
    b_dot_vcf: ""
    cdot_vcf: ""
  }
}