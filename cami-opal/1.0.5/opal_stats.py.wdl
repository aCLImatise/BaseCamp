version 1.0

task OpalStatspy {
  input {
    Directory? input_dir
    Directory? output_dir
    File? yaml
    String? volume
  }
  command <<<
    opal_stats_py \
      ~{if defined(input_dir) then ("--input_dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(yaml) then ("--yaml " +  '"' + yaml + '"') else ""} \
      ~{if defined(volume) then ("--volume " +  '"' + volume + '"') else ""}
  >>>
  parameter_meta {
    input_dir: "Input directory containing gzipped FASTQ files"
    output_dir: "Output directory"
    yaml: "Bioboxes YAML file (default: INPUT_DIR/biobox.yaml)"
    volume: "Docker volume"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}