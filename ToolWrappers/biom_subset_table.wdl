version 1.0

task BiomSubsettable {
  input {
    Int? choose_subset_write
    File? input_hdf_five_fp
    File? input_json_fp
    Boolean? axis
    File? ids
    File? output_fp
  }
  command <<<
    biom subset_table \
      ~{if defined(choose_subset_write) then ("-o " +  '"' + choose_subset_write + '"') else ""} \
      ~{if defined(input_hdf_five_fp) then ("--input-hdf5-fp " +  '"' + input_hdf_five_fp + '"') else ""} \
      ~{if defined(input_json_fp) then ("--input-json-fp " +  '"' + input_json_fp + '"') else ""} \
      ~{if (axis) then "--axis" else ""} \
      ~{if defined(ids) then ("--ids " +  '"' + ids + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    choose_subset_write: "Choose a subset of the observations in table.biom (HDF5) and write them to\\nsubset.biom:\\n$ biom subset-table -i table.biom -a observations -s observation_ids.txt\\n-o subset.biom"
    input_hdf_five_fp: "the input hdf5 BIOM table filepath to subset"
    input_json_fp: "the input json BIOM table filepath to subset"
    axis: "[sample|observation]\\nthe axis to subset over, either sample or\\nobservation  [required]"
    ids: "a file containing a single column of IDs to\\nretain (either sample IDs or observation\\nIDs, depending on the axis)  [required]"
    output_fp: "the output BIOM table filepath  [required]"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}