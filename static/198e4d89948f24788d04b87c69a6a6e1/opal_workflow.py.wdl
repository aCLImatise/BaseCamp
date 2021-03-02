version 1.0

task OpalWorkflowpy {
  input {
    Directory? input_dir
    Directory? output_dir
    File? gold_standard_file
    File? yaml
    String? volume
    Boolean? no_normalization
    Boolean? plot_abundances
    String? labels
    String? desc
    String images
  }
  command <<<
    opal_workflow_py \
      ~{images} \
      ~{if defined(input_dir) then ("--input_dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(gold_standard_file) then ("--gold_standard_file " +  '"' + gold_standard_file + '"') else ""} \
      ~{if defined(yaml) then ("--yaml " +  '"' + yaml + '"') else ""} \
      ~{if defined(volume) then ("--volume " +  '"' + volume + '"') else ""} \
      ~{if (no_normalization) then "--no_normalization" else ""} \
      ~{if (plot_abundances) then "--plot_abundances" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cami-opal:1.0.9--py_0"
  }
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
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}