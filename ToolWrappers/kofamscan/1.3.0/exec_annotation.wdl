version 1.0

task ExecAnnotation {
  input {
    File? file_output_result
    File? profile
    File? ko_list
    Int? cpu
    File? config
    Directory? tmp_dir
    String? e_value
    String? threshold_scale
    String? format
    Boolean? create_alignment
    Boolean? re_annotate
    Boolean? keep_tabular
    Boolean? keep_output
    String query
  }
  command <<<
    exec_annotation \
      ~{query} \
      ~{if defined(file_output_result) then ("-o " +  '"' + file_output_result + '"') else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(ko_list) then ("--ko-list " +  '"' + ko_list + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(e_value) then ("--e-value " +  '"' + e_value + '"') else ""} \
      ~{if defined(threshold_scale) then ("--threshold-scale " +  '"' + threshold_scale + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (create_alignment) then "--create-alignment" else ""} \
      ~{if (re_annotate) then "--reannotate" else ""} \
      ~{if (keep_tabular) then "--keep-tabular" else ""} \
      ~{if (keep_output) then "--keep-output" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_output_result: "File to output the result  [stdout]"
    profile: "Profile HMM database"
    ko_list: "KO information file"
    cpu: "Number of CPU to use  [1]"
    config: "Config file"
    tmp_dir: "Temporary directory  [./tmp]"
    e_value: "Largest E-value required of the hits"
    threshold_scale: "The score thresholds will be multiplied by this value"
    format: "Format of the output [detail]\\ndetail:          Detail for each hits (including hits below threshold)\\ndetail-tsv:      Tab separeted values for detail format\\nmapper:          KEGG Mapper compatible format\\nmapper-one-line: Similar to mapper, but all hit KOs are listed in one line"
    create_alignment: "Create domain annotation files for each sequence\\nThey will be located in the tmp directory\\nIncompatible with -r"
    re_annotate: "Skip hmmsearch\\nIncompatible with --create-alignment"
    keep_tabular: "Neither create tabular.txt nor delete K number files\\nBy default, all K number files will be combined into\\na tabular.txt and delete them"
    keep_output: "Neither create output.txt nor delete K number files\\nBy default, all K number files will be combined into\\na output.txt and delete them\\nMust be with --create-alignment"
    query: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_output_result = "${in_file_output_result}"
  }
}