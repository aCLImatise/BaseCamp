version 1.0

task TreebestPwalign {
  input {
    Boolean? generate_full_alignment
    Boolean? apply_matrix_mean
    Boolean? just_calculate_boundaries
    String? gap_open_penalty
    String? gap_extension_penalty
    String? gap_end_penalty
    String? frameshift_penalty_aant
    String? good_splicing_penalty
    String? bandwidth
    String? bad_splicing_penalty
    Boolean? output_miscellaneous_information
  }
  command <<<
    treebest pwalign \
      ~{true="-f" false="" generate_full_alignment} \
      ~{true="-a" false="" apply_matrix_mean} \
      ~{true="-d" false="" just_calculate_boundaries} \
      ~{if defined(gap_open_penalty) then ("-o " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-e " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(gap_end_penalty) then ("-n " +  '"' + gap_end_penalty + '"') else ""} \
      ~{if defined(frameshift_penalty_aant) then ("-s " +  '"' + frameshift_penalty_aant + '"') else ""} \
      ~{if defined(good_splicing_penalty) then ("-g " +  '"' + good_splicing_penalty + '"') else ""} \
      ~{if defined(bandwidth) then ("-w " +  '"' + bandwidth + '"') else ""} \
      ~{if defined(bad_splicing_penalty) then ("-b " +  '"' + bad_splicing_penalty + '"') else ""} \
      ~{true="-m" false="" output_miscellaneous_information}
  >>>
  parameter_meta {
    generate_full_alignment: "generate full alignment"
    apply_matrix_mean: "do not apply matrix mean in local alignment"
    just_calculate_boundaries: "just calculate alignment boundaries"
    gap_open_penalty: "gap open penalty"
    gap_extension_penalty: "gap extension penalty"
    gap_end_penalty: "gap end penalty for nt2nt or aa2aa"
    frameshift_penalty_aant: "frame-shift penalty for aa2nt"
    good_splicing_penalty: "good splicing penalty"
    bandwidth: "band-width"
    bad_splicing_penalty: "bad splicing penalty"
    output_miscellaneous_information: "output miscellaneous information"
  }
}