version 1.0

task PhyluceAssemblyGetTrinityCoverage {
  input {
    String? assemblies
    String? assemb_lo_config
    String? cores
    String? subfolder
    String? verbosity
    String? log_path
    Boolean? clean
    Boolean? bwa_mem
    String? assembler
    Boolean? trim
  }
  command <<<
    phyluce_assembly_get_trinity_coverage \
      ~{if defined(assemblies) then ("--assemblies " +  '"' + assemblies + '"') else ""} \
      ~{if defined(assemb_lo_config) then ("--assemblo-config " +  '"' + assemb_lo_config + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(subfolder) then ("--subfolder " +  '"' + subfolder + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{true="--clean" false="" clean} \
      ~{true="--bwa-mem" false="" bwa_mem} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{true="--trim" false="" trim}
  >>>
  parameter_meta {
    assemblies: "The directory containing the assemblies"
    assemb_lo_config: "The assemblo_trinity configuration file"
    cores: "The number of compute cores/threads to run with Trinity"
    subfolder: "A subdirectory, below the level of the group, containing the reads"
    verbosity: "The logging level to use"
    log_path: "The path to a directory to hold logs."
    clean: "Cleanup all intermediate Trinity files"
    bwa_mem: "Use bwa-mem instead of standard bwa"
    assembler: "Program used to asemble raw reads"
    trim: "Trim contigs to a minimum coverage amount"
  }
}