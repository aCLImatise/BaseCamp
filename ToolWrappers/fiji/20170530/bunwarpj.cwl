class: CommandLineTool
id: bunwarpj.cwl
inputs:
- id: in_align
  doc: ': ALIGN TWO IMAGES'
  type: boolean
  inputBinding:
    prefix: -align
- id: in_landmarks
  doc: "Landmark_weight  : Weight of the landmarks\nLandmark_file    : Landmark file"
  type: boolean
  inputBinding:
    prefix: -landmarks
- id: in_elastic_transform
  doc: ': TRANSFORM A SOURCE IMAGE WITH A GIVEN ELASTIC DEFORMATION'
  type: boolean
  inputBinding:
    prefix: -elastic_transform
- id: in_raw_transform
  doc: ': TRANSFORM A SOURCE IMAGE WITH A GIVEN RAW DEFORMATION'
  type: boolean
  inputBinding:
    prefix: -raw_transform
- id: in_compare_elastic
  doc: ': COMPARE 2 OPPOSITE ELASTIC DEFORMATIONS (BY WARPING INDEX)'
  type: boolean
  inputBinding:
    prefix: -compare_elastic
- id: in_compare_elastic_raw
  doc: ': COMPARE AN ELASTIC DEFORMATION WITH A RAW DEFORMATION (BY WARPING INDEX)'
  type: boolean
  inputBinding:
    prefix: -compare_elastic_raw
- id: in_compare_raw
  doc: ': COMPARE 2 ELASTIC DEFORMATIONS (BY WARPING INDEX)'
  type: boolean
  inputBinding:
    prefix: -compare_raw
- id: in_convert_to_raw
  doc: ': CONVERT AN ELASTIC DEFORMATION INTO RAW FORMAT'
  type: boolean
  inputBinding:
    prefix: -convert_to_raw
- id: in_compose_elastic
  doc: ': COMPOSE TWO ELASTIC DEFORMATIONS'
  type: boolean
  inputBinding:
    prefix: -compose_elastic
- id: in_compose_raw
  doc: ': COMPOSE TWO RAW DEFORMATIONS'
  type: boolean
  inputBinding:
    prefix: -compose_raw
- id: in_compose_raw_elastic
  doc: ': COMPOSE A RAW DEFORMATION WITH AN ELASTIC DEFORMATION'
  type: boolean
  inputBinding:
    prefix: -compose_raw_elastic
- id: in_adapt_transform
  doc: ': ADAPT AN ELASTIC DEFORMATION GIVEN A NEW IMAGE SIZE'
  type: boolean
  inputBinding:
    prefix: -adapt_transform
- id: in_bun_war_pj
  doc: '-help                       : SHOW THIS MESSAGE'
  type: string
  inputBinding:
    position: 0
- id: in_var_13
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
- id: in_target_mask
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 2
- id: in_var_15
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 3
- id: in_source_mask
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 4
- id: in_min_scale_def
  doc: ": Scale of the coarsest deformation\n0 is the coarsest possible"
  type: string
  inputBinding:
    position: 5
- id: in_max_scale_def
  doc: ': Scale of the finest deformation'
  type: string
  inputBinding:
    position: 6
- id: in_max_subs_amp_fact
  doc: ': Maximum subsampling factor (power of 2: [0, 1, 2 ... 7]'
  type: string
  inputBinding:
    position: 7
- id: in_div_weight
  doc: ': Weight of the divergence term'
  type: string
  inputBinding:
    position: 8
- id: in_curl_weight
  doc: ': Weight of the curl term'
  type: string
  inputBinding:
    position: 9
- id: in_image_weight
  doc: ': Weight of the image term'
  type: string
  inputBinding:
    position: 10
- id: in_consistency_weight
  doc: ': Weight of the deformation consistency'
  type: string
  inputBinding:
    position: 11
- id: in_affine_file_one
  doc: ': Initial source affine matrix transformation'
  type: long
  inputBinding:
    position: 0
- id: in_affine_file_two
  doc: ': Initial target affine matrix transformation'
  type: long
  inputBinding:
    position: 1
- id: in_var_26
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 0
- id: in_var_27
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
- id: in_var_28
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 0
- id: in_var_29
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
- id: in_var_30
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 0
- id: in_var_31
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
- id: in_var_32
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 0
- id: in_var_33
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
- id: in_var_34
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 0
- id: in_var_35
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
- id: in_var_36
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 0
- id: in_var_37
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
- id: in_var_38
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 0
- id: in_var_39
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
- id: in_var_40
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 0
- id: in_var_41
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
- id: in_var_42
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 0
- id: in_var_43
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
- id: in_var_44
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 0
- id: in_var_45
  doc: ': In any image format'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bunwarpj
