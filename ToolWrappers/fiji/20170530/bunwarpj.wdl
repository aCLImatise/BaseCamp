version 1.0

task Bunwarpj {
  input {
    Boolean? align
    Boolean? elastic_transform
    Boolean? raw_transform
    Boolean? compare_elastic
    Boolean? compare_elastic_raw
    Boolean? compare_raw
    Boolean? convert_to_raw
    Boolean? compose_elastic
    Boolean? compose_raw
    Boolean? compose_raw_elastic
    Boolean? adapt_transform
    String bun_war_pj
    String var_12
    String target_mask
    String var_14
    String source_mask
    String min_scale_def
    String max_scale_def
    String max_subs_amp_fact
    String div_weight
    String curl_weight
    String image_weight
    String consistency_weight
    String landmark_weight
    String landmark_file
    Int affine_file_one
    Int affine_file_two
    String var_27
    String var_28
    String var_29
    String var_30
    String var_31
    String var_32
    String var_33
    String var_34
    String var_35
    String var_36
    String var_37
    String var_38
    String var_39
    String var_40
    String var_41
    String var_42
    String var_43
    String var_44
    String var_45
    String var_46
  }
  command <<<
    bunwarpj \
      ~{bun_war_pj} \
      ~{var_12} \
      ~{target_mask} \
      ~{var_14} \
      ~{source_mask} \
      ~{min_scale_def} \
      ~{max_scale_def} \
      ~{max_subs_amp_fact} \
      ~{div_weight} \
      ~{curl_weight} \
      ~{image_weight} \
      ~{consistency_weight} \
      ~{landmark_weight} \
      ~{landmark_file} \
      ~{affine_file_one} \
      ~{affine_file_two} \
      ~{var_27} \
      ~{var_28} \
      ~{var_29} \
      ~{var_30} \
      ~{var_31} \
      ~{var_32} \
      ~{var_33} \
      ~{var_34} \
      ~{var_35} \
      ~{var_36} \
      ~{var_37} \
      ~{var_38} \
      ~{var_39} \
      ~{var_40} \
      ~{var_41} \
      ~{var_42} \
      ~{var_43} \
      ~{var_44} \
      ~{var_45} \
      ~{var_46} \
      ~{if (align) then "-align" else ""} \
      ~{if (elastic_transform) then "-elastic_transform" else ""} \
      ~{if (raw_transform) then "-raw_transform" else ""} \
      ~{if (compare_elastic) then "-compare_elastic" else ""} \
      ~{if (compare_elastic_raw) then "-compare_elastic_raw" else ""} \
      ~{if (compare_raw) then "-compare_raw" else ""} \
      ~{if (convert_to_raw) then "-convert_to_raw" else ""} \
      ~{if (compose_elastic) then "-compose_elastic" else ""} \
      ~{if (compose_raw) then "-compose_raw" else ""} \
      ~{if (compose_raw_elastic) then "-compose_raw_elastic" else ""} \
      ~{if (adapt_transform) then "-adapt_transform" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    align: ": ALIGN TWO IMAGES"
    elastic_transform: ": TRANSFORM A SOURCE IMAGE WITH A GIVEN ELASTIC DEFORMATION"
    raw_transform: ": TRANSFORM A SOURCE IMAGE WITH A GIVEN RAW DEFORMATION"
    compare_elastic: ": COMPARE 2 OPPOSITE ELASTIC DEFORMATIONS (BY WARPING INDEX)"
    compare_elastic_raw: ": COMPARE AN ELASTIC DEFORMATION WITH A RAW DEFORMATION (BY WARPING INDEX)"
    compare_raw: ": COMPARE 2 ELASTIC DEFORMATIONS (BY WARPING INDEX)"
    convert_to_raw: ": CONVERT AN ELASTIC DEFORMATION INTO RAW FORMAT"
    compose_elastic: ": COMPOSE TWO ELASTIC DEFORMATIONS"
    compose_raw: ": COMPOSE TWO RAW DEFORMATIONS"
    compose_raw_elastic: ": COMPOSE A RAW DEFORMATION WITH AN ELASTIC DEFORMATION"
    adapt_transform: ": ADAPT AN ELASTIC DEFORMATION GIVEN A NEW IMAGE SIZE"
    bun_war_pj: "-help                       : SHOW THIS MESSAGE"
    var_12: ": In any image format"
    target_mask: ": In any image format"
    var_14: ": In any image format"
    source_mask: ": In any image format"
    min_scale_def: ": Scale of the coarsest deformation\\n0 is the coarsest possible"
    max_scale_def: ": Scale of the finest deformation"
    max_subs_amp_fact: ": Maximum subsampling factor (power of 2: [0, 1, 2 ... 7]"
    div_weight: ": Weight of the divergence term"
    curl_weight: ": Weight of the curl term"
    image_weight: ": Weight of the image term"
    consistency_weight: ": Weight of the deformation consistency"
    landmark_weight: ": Weight of the landmarks"
    landmark_file: ": Landmark file"
    affine_file_one: ": Initial source affine matrix transformation"
    affine_file_two: ": Initial target affine matrix transformation"
    var_27: ": In any image format"
    var_28: ": In any image format"
    var_29: ": In any image format"
    var_30: ": In any image format"
    var_31: ": In any image format"
    var_32: ": In any image format"
    var_33: ": In any image format"
    var_34: ": In any image format"
    var_35: ": In any image format"
    var_36: ": In any image format"
    var_37: ": In any image format"
    var_38: ": In any image format"
    var_39: ": In any image format"
    var_40: ": In any image format"
    var_41: ": In any image format"
    var_42: ": In any image format"
    var_43: ": In any image format"
    var_44: ": In any image format"
    var_45: ": In any image format"
    var_46: ": In any image format"
  }
  output {
    File out_stdout = stdout()
  }
}