version 1.0

task DRAMvpyDistill {
  input {
    File? input_file
    Directory? output_dir
    String? group_by_column
    Int? max_auxiliary_score
    Boolean? remove_transposons
    Boolean? remove_fs
  }
  command <<<
    DRAM_v_py distill \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(group_by_column) then ("--groupby_column " +  '"' + group_by_column + '"') else ""} \
      ~{if defined(max_auxiliary_score) then ("--max_auxiliary_score " +  '"' + max_auxiliary_score + '"') else ""} \
      ~{if (remove_transposons) then "--remove_transposons" else ""} \
      ~{if (remove_fs) then "--remove_fs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Annotations path (default: None)"
    output_dir: "Directory to write summarized genomes (default: None)"
    group_by_column: "Column from annotations to group as VGF units\\n(default: scaffold)"
    max_auxiliary_score: "Maximum auxiliary score to consider gene as potential\\nAMG (default: 3)"
    remove_transposons: "Do not consider genes on scaffolds with transposons as\\npotential AMGs (default: False)"
    remove_fs: "Do not consider genes near ends of scaffolds as\\npotential AMGs (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}