version 1.0

task FargeneModelCreation {
  input {
    String? reference_sequences
    String? negative_sequences
    String? directory_where_saved
    String? model_name
    String? fragment_lengths
    String? num_fragments
    Boolean? only_sens
    Boolean? only_spec
    Boolean? only_full_length
    Boolean? only_fragments
  }
  command <<<
    fargene_model_creation \
      ~{if defined(reference_sequences) then ("--reference-sequences " +  '"' + reference_sequences + '"') else ""} \
      ~{if defined(negative_sequences) then ("--negative-sequences " +  '"' + negative_sequences + '"') else ""} \
      ~{if defined(directory_where_saved) then ("--output " +  '"' + directory_where_saved + '"') else ""} \
      ~{if defined(model_name) then ("--modelname " +  '"' + model_name + '"') else ""} \
      ~{if defined(fragment_lengths) then ("--fragment-lengths " +  '"' + fragment_lengths + '"') else ""} \
      ~{if defined(num_fragments) then ("--num-fragments " +  '"' + num_fragments + '"') else ""} \
      ~{true="--only-sens" false="" only_sens} \
      ~{true="--only-spec" false="" only_spec} \
      ~{true="--only-full-length" false="" only_full_length} \
      ~{true="--only-fragments" false="" only_fragments}
  >>>
  parameter_meta {
    reference_sequences: "The sequences that the model should be built of."
    negative_sequences: "The sequences that should be used as the negative dataset. Should preferable be similar sequences but without the desired phenotype."
    directory_where_saved: "The directory where the output should be saved."
    model_name: "The name of the new model"
    fragment_lengths: "The length (aa) of the fragments that should be used to determine the threshold score for metagenomic input. (default: 33 AA)"
    num_fragments: "The number of fragments that should be created from each gene. (default: 10 000)"
    only_sens: "Should be used if only sensitivity of the model should be estimated."
    only_spec: "Should be used if only the specificity of the model should be estimated."
    only_full_length: "Should be used if you only want to optimize the threshold score for full length genes."
    only_fragments: "Should be used if you only want to optimize the threshold score for full fragmented genes."
  }
}