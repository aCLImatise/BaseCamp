version 1.0

task GgdGetfiles {
  input {
    String? channel
    String? species
    String? genome_build
    File? pattern
    File? prefix
  }
  command <<<
    ggd get_files \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(genome_build) then ("--genome-build " +  '"' + genome_build + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ggd:1.1.3--pyh3252c3a_0"
  }
  parameter_meta {
    channel: "The ggd channel of the recipe to find. (Default =\\ngenomics)"
    species: "(Optional) species recipe is for. Use '*' for any\\nspecies"
    genome_build: "(Optional) genome build the recipe is for. Use '*' for\\nany genome build."
    pattern: "(Optional) pattern to match the name of the file\\ndesired. To list all files for a ggd package, do not\\nuse the -p option"
    prefix: "(Optional) The name or the full directory path to an\\nconda environment where a ggd recipe is stored. (Only\\nneeded if not getting file paths for files in the\\ncurrent conda environment)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}