version 1.0

task BasenjiDataHicWritepy {
  input {
    String? genome_index
    Int? sequence_start_index
    String? sequence_end_index
    String? te
    Int? ts
    File? unmappable_array_numpy
    Float? u_map_set
    String fast_a_file
    String seqs_bed_file
    String seqs_cov_dir
    String tfr_file
  }
  command <<<
    basenji_data_hic_write_py \
      ~{fast_a_file} \
      ~{seqs_bed_file} \
      ~{seqs_cov_dir} \
      ~{tfr_file} \
      ~{if defined(genome_index) then ("-g " +  '"' + genome_index + '"') else ""} \
      ~{if defined(sequence_start_index) then ("-s " +  '"' + sequence_start_index + '"') else ""} \
      ~{if defined(sequence_end_index) then ("-e " +  '"' + sequence_end_index + '"') else ""} \
      ~{if defined(te) then ("--te " +  '"' + te + '"') else ""} \
      ~{if defined(ts) then ("--ts " +  '"' + ts + '"') else ""} \
      ~{if defined(unmappable_array_numpy) then ("-u " +  '"' + unmappable_array_numpy + '"') else ""} \
      ~{if defined(u_map_set) then ("--umap_set " +  '"' + u_map_set + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    genome_index: "Genome index"
    sequence_start_index: "Sequence start index [Default: 0]"
    sequence_end_index: "Sequence end index [Default: none]"
    te: "Extend targets vector [Default: none]"
    ts: "Write targets into vector starting at index [Default: 0"
    unmappable_array_numpy: "Unmappable array numpy file"
    u_map_set: "Sequence distribution value to set unmappable positions\\nto, eg 0.25.\\n"
    fast_a_file: ""
    seqs_bed_file: ""
    seqs_cov_dir: ""
    tfr_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}