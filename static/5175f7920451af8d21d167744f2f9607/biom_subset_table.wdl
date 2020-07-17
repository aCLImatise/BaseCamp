version 1.0

task BiomSubsetTable {
  input {
    File? input_hdf_five_fp
    File? input_json_fp
    Boolean? axis
    File? ids
    File? output_fp
  }
  command <<<
    biom subset-table \
      ~{if defined(input_hdf_five_fp) then ("--input-hdf5-fp " +  '"' + input_hdf_five_fp + '"') else ""} \
      ~{if defined(input_json_fp) then ("--input-json-fp " +  '"' + input_json_fp + '"') else ""} \
      ~{true="--axis" false="" axis} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    input_hdf_five_fp: "the input hdf5 BIOM table filepath to subset"
    input_json_fp: "the input json BIOM table filepath to subset"
    axis: "[sample|observation] the axis to subset over, either sample or observation  [required]"
    ids: "a file containing a single column of IDs to retain (either sample IDs or observation IDs, depending on the axis)  [required]"
    output_fp: "the output BIOM table filepath  [required]"
  }
}