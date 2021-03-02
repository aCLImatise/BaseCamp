version 1.0

task PhyluceAssemblyGetTrinityCoverage {
  input {
    Directory? assemblies
    File? assemb_lo_config
    Int? cores
    String? verbosity
    File? log_path
    Boolean? clean
    Boolean? bwa_mem
    String? assembler
    Boolean? trim
    String trinity
  }
  command <<<
    phyluce_assembly_get_trinity_coverage \
      ~{trinity} \
      ~{if defined(assemblies) then ("--assemblies " +  '"' + assemblies + '"') else ""} \
      ~{if defined(assemb_lo_config) then ("--assemblo-config " +  '"' + assemb_lo_config + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (bwa_mem) then "--bwa-mem" else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if (trim) then "--trim" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assemblies: "The directory containing the assemblies"
    assemb_lo_config: "The assemblo_trinity configuration file"
    cores: "The number of compute cores/threads to run with"
    verbosity: "The logging level to use"
    log_path: "The path to a directory to hold logs."
    clean: "Cleanup all intermediate Trinity files"
    bwa_mem: "Use bwa-mem instead of standard bwa"
    assembler: "Program used to asemble raw reads"
    trim: "Trim contigs to a minimum coverage amount"
    trinity: "--subfolder SUBFOLDER"
  }
  output {
    File out_stdout = stdout()
  }
}