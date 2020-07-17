version 1.0

task OpalWorkflow.py {
  input {
    String? input_dir
    String? output_dir
    String? gold_standard_file
    String? yaml
    String? volume
    Boolean? no_normalization
    Boolean? plot_abundances
    String? labels
    String? desc
    String images
  }
  command <<<
    opal_workflow.py \
      ~{images} \
      ~{if defined(input_dir) then ("--input_dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(gold_standard_file) then ("--gold_standard_file " +  '"' + gold_standard_file + '"') else ""} \
      ~{if defined(yaml) then ("--yaml " +  '"' + yaml + '"') else ""} \
      ~{if defined(volume) then ("--volume " +  '"' + volume + '"') else ""} \
      ~{true="--no_normalization" false="" no_normalization} \
      ~{true="--plot_abundances" false="" plot_abundances} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""}
  >>>
  parameter_meta {
    input_dir: "Input directory containing gzipped FASTQ files"
    output_dir: "Output directory"
    gold_standard_file: "Gold standard file"
    yaml: "Bioboxes YAML file (default: INPUT_DIR/biobox.yaml)"
    volume: "Docker volume"
    no_normalization: "Do not normalize samples"
    plot_abundances: "Plot abundances in the gold standard"
    labels: "Comma-separated names of profilers to be shown in OPAL"
    desc: "Description for HTML page"
    images: "Docker images (bioboxes) of profilers"
  }
}