version 1.0

task Exonerate {
  input {
    Boolean? custom_server
    Boolean? fast_a_suffix
    Boolean? show_alignment
    Boolean? show_sugar
    Boolean? show_cigar
    Boolean? show_vulgar
    Boolean? show_query_gff
    Boolean? show_target_gff
    Boolean? ryo
    Boolean? single_pass
    Boolean? soft_mask_query
    Boolean? soft_mask_target
    Boolean? use_a_atla
    Boolean? forward_coordinates
    Boolean? splice_three
    Boolean? splice_five
    Boolean? force_g_tag
  }
  command <<<
    exonerate \
      ~{true="--customserver" false="" custom_server} \
      ~{true="--fastasuffix" false="" fast_a_suffix} \
      ~{true="--showalignment" false="" show_alignment} \
      ~{true="--showsugar" false="" show_sugar} \
      ~{true="--showcigar" false="" show_cigar} \
      ~{true="--showvulgar" false="" show_vulgar} \
      ~{true="--showquerygff" false="" show_query_gff} \
      ~{true="--showtargetgff" false="" show_target_gff} \
      ~{true="--ryo" false="" ryo} \
      ~{true="--singlepass" false="" single_pass} \
      ~{true="--softmaskquery" false="" soft_mask_query} \
      ~{true="--softmasktarget" false="" soft_mask_target} \
      ~{true="--useaatla" false="" use_a_atla} \
      ~{true="--forwardcoordinates" false="" forward_coordinates} \
      ~{true="--splice3" false="" splice_three} \
      ~{true="--splice5" false="" splice_five} \
      ~{true="--forcegtag" false="" force_g_tag}
  >>>
  parameter_meta {
    custom_server: "[NULL] "
    fast_a_suffix: "[.fa] "
    show_alignment: "[TRUE] "
    show_sugar: "[FALSE] "
    show_cigar: "[FALSE] "
    show_vulgar: "[TRUE] "
    show_query_gff: "[FALSE] "
    show_target_gff: "[FALSE] "
    ryo: "[NULL] "
    single_pass: "[TRUE] "
    soft_mask_query: "[FALSE] "
    soft_mask_target: "[FALSE] "
    use_a_atla: "[TRUE] "
    forward_coordinates: "[TRUE] "
    splice_three: "[primate] "
    splice_five: "[primate] "
    force_g_tag: "[FALSE] "
  }
}