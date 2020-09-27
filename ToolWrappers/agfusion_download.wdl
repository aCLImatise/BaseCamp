version 1.0

task AgfusionDownload {
  input {
    Directory? dir
    Int? genome
    String? species
    Int? release
    Boolean? available
  }
  command <<<
    agfusion download \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if (available) then "--available" else ""}
  >>>
  parameter_meta {
    dir: "(Optional) Directory to the database will be\\ndownloaded to (defaults to current working directory)."
    genome: "Specify the genome shortcut (e.g. hg19). To see\\nallavailable shortcuts run 'agfusion download -a'.\\nEither specify this or --species and --release."
    species: "The species (e.g. homo_sapiens)."
    release: "The ensembl release (e.g. 87)."
    available: "List available species and ensembl releases."
  }
  output {
    File out_stdout = stdout()
  }
}