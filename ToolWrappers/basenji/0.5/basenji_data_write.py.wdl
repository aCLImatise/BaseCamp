version 1.0

task BasenjiDataWritepy {
  input {
    Int? sequence_start_index
    String? sequence_end_index
    String? te
    Int? ts
    File? unmappable_array_numpy
    Float? u_map_clip
    Boolean? u_map_tfr
    String fast_a_file
    String seqs_bed_file
    String seqs_cov_dir
    String tfr_file
  }
  command <<<
    basenji_data_write_py \
      ~{fast_a_file} \
      ~{seqs_bed_file} \
      ~{seqs_cov_dir} \
      ~{tfr_file} \
      ~{if defined(sequence_start_index) then ("-s " +  '"' + sequence_start_index + '"') else ""} \
      ~{if defined(sequence_end_index) then ("-e " +  '"' + sequence_end_index + '"') else ""} \
      ~{if defined(te) then ("--te " +  '"' + te + '"') else ""} \
      ~{if defined(ts) then ("--ts " +  '"' + ts + '"') else ""} \
      ~{if defined(unmappable_array_numpy) then ("-u " +  '"' + unmappable_array_numpy + '"') else ""} \
      ~{if defined(u_map_clip) then ("--umap_clip " +  '"' + u_map_clip + '"') else ""} \
      ~{if (u_map_tfr) then "--umap_tfr" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    sequence_start_index: "Sequence start index [Default: 0]"
    sequence_end_index: "Sequence end index [Default: none]"
    te: "Extend targets vector [Default: none]"
    ts: "Write targets into vector starting at index [Default:\\n0"
    unmappable_array_numpy: "Unmappable array numpy file"
    u_map_clip: "Clip values at unmappable positions to distribution\\nquantiles, eg 0.25. [Default: 1]"
    u_map_tfr: "Save umap array into TFRecords [Default: False]"
    fast_a_file: ""
    seqs_bed_file: ""
    seqs_cov_dir: ""
    tfr_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}