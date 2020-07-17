version 1.0

task MedakaToolsGetAlignmentParams {
  input {
    String? model
    Boolean? disable_cu_dnn
  }
  command <<<
    medaka tools get_alignment_params \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{true="--disable_cudnn" false="" disable_cu_dnn}
  >>>
  parameter_meta {
    model: "Model to use. {r103_min_high_g345, r103_min_high_g360, r103_prom_high_g360, r103_prom_snp_g3210, r103_prom_variant_g3210, r10_min_high_g303, r10_min_high_g340, r941_min_fast_g303, r941_min_high_g303, r941_min_high_g330, r941_min_high_g340_rle, r941_min_high_g344, r941_min_high_g351, r941_min_high_g360, r941_prom_fast_g303, r941_prom_high_g303, r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g360, r941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360, r941_prom_variant_g303, r941_prom_variant_g322, r941_prom_variant_g360} (default: r941_min_high_g360)"
    disable_cu_dnn: "Disable use of cuDNN model layers. (default: False)"
  }
}