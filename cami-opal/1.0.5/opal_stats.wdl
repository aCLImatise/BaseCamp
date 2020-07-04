version 1.0

task OpalStats.py {
  input {
    String? input_dir
    String? output_dir
    String? yaml
    String? volume
    String image
  }
  command <<<
    opal_stats.py \
      ~{image} \
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
    image: "Docker image (biobox) of profiler"
  }
}