version 1.0

task BcbioVmpyTemplate {
  input {
    Boolean? only_metadata
    Boolean? force_single
    String? separators
    File? system_config
    Int? num_cores
    Boolean? rel_paths
    String template
    String metadata
    String input_files
  }
  command <<<
    bcbio_vm_py template \
      ~{template} \
      ~{metadata} \
      ~{input_files} \
      ~{if (only_metadata) then "--only-metadata" else ""} \
      ~{if (force_single) then "--force-single" else ""} \
      ~{if defined(separators) then ("--separators " +  '"' + separators + '"') else ""} \
      ~{if defined(system_config) then ("--systemconfig " +  '"' + system_config + '"') else ""} \
      ~{if defined(num_cores) then ("--numcores " +  '"' + num_cores + '"') else ""} \
      ~{if (rel_paths) then "--relpaths" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    only_metadata: "Ignore samples not present in metadata CSV file"
    force_single: "Treat all files as single reads"
    separators: "semicolon separated list of separators that indicates\\npaired files."
    system_config: "Global YAML configuration file specifying system\\ndetails. Defaults to installed bcbio_system.yaml."
    num_cores: "Total cores to use for processing"
    rel_paths: "Convert inputs into relative paths to the work\\ndirectory\\n"
    template: "Template name or path to template YAML file. Built in\\nchoices: freebayes-variant, gatk-variant, tumor-\\npaired, noalign-variant, illumina-rnaseq, illumina-\\nchipseq"
    metadata: "CSV file with project metadata. Name of file used as\\nproject name."
    input_files: "Input read files, in BAM or fastq format"
  }
  output {
    File out_stdout = stdout()
  }
}