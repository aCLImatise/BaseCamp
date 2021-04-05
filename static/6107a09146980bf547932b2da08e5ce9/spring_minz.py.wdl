version 1.0

task SpringMinzpy {
  input {
    File? target_list
    File? target_path
    File? input_list
    File? input_path
    String? cross
    Int? output_file_containing
    File? log
    Int? min_score
  }
  command <<<
    spring_minz_py \
      ~{if defined(target_list) then ("--targetlist " +  '"' + target_list + '"') else ""} \
      ~{if defined(target_path) then ("--targetpath " +  '"' + target_path + '"') else ""} \
      ~{if defined(input_list) then ("--inputlist " +  '"' + input_list + '"') else ""} \
      ~{if defined(input_path) then ("--inputpath " +  '"' + input_path + '"') else ""} \
      ~{if defined(cross) then ("--cross " +  '"' + cross + '"') else ""} \
      ~{if defined(output_file_containing) then ("--output " +  '"' + output_file_containing + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(min_score) then ("--minscore " +  '"' + min_score + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0"
  }
  parameter_meta {
    target_list: "Text file containing identifiers."
    target_path: "Directory containing `hhr` files"
    input_list: "Text file containing identifiers."
    input_path: "Directory containing `hhr` files"
    cross: "PDB Cross Reference"
    output_file_containing: "Output file containing min-Z scores"
    log: "Log file"
    min_score: "min-Z score threshold\\n"
  }
  output {
    File out_stdout = stdout()
  }
}