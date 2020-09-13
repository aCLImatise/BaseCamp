version 1.0

task DRAMpyDistill {
  input {
    File? input_file
    Directory? output_dir
    File? rrna_path
    File? trna_path
    String? group_by_column
  }
  command <<<
    DRAM_py distill \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(rrna_path) then ("--rrna_path " +  '"' + rrna_path + '"') else ""} \
      ~{if defined(trna_path) then ("--trna_path " +  '"' + trna_path + '"') else ""} \
      ~{if defined(group_by_column) then ("--groupby_column " +  '"' + group_by_column + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Annotations path (default: None)"
    output_dir: "Directory to write summarized genomes (default: None)"
    rrna_path: "rRNA output from annotation (default: None)"
    trna_path: "tRNA output from annotation (default: None)"
    group_by_column: "Column from annotations to group as organism units\\n(default: fasta)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}