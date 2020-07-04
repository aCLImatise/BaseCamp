version 1.0

task GgdMakeRecipe {
  input {
    String? channel
    String? dependency
    String? extra_file
    String? platform
    String? species
    String? genome_build
    String? authors
    String? package_version
    String? data_version
    String? data_provider
    String? summary
    String? keyword
    String? coordinate_base
    String? name
    String script
  }
  command <<<
    ggd make-recipe \
      ~{script} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if defined(dependency) then ("--dependency " +  '"' + dependency + '"') else ""} \
      ~{if defined(extra_file) then ("--extra-file " +  '"' + extra_file + '"') else ""} \
      ~{if defined(platform) then ("--platform " +  '"' + platform + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(genome_build) then ("--genome-build " +  '"' + genome_build + '"') else ""} \
      ~{if defined(authors) then ("--authors " +  '"' + authors + '"') else ""} \
      ~{if defined(package_version) then ("--package-version " +  '"' + package_version + '"') else ""} \
      ~{if defined(data_version) then ("--data-version " +  '"' + data_version + '"') else ""} \
      ~{if defined(data_provider) then ("--data-provider " +  '"' + data_provider + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(keyword) then ("--keyword " +  '"' + keyword + '"') else ""} \
      ~{if defined(coordinate_base) then ("--coordinate-base " +  '"' + coordinate_base + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    channel: "the ggd channel to use. (Default = genomics)"
    dependency: "any software dependencies (in bioconda, conda-forge) or data-dependency (in ggd). May be as many times as needed."
    extra_file: "any files that the recipe creates that are not a *.gz and *.gz.tbi pair or *.fa and *.fai pair. May be used more than once"
    platform: "Whether to use noarch as the platfrom or the system platform. If set to 'none' the system platform will be used. (Default = noarch. Noarch means no architecture and is platform agnostic.)"
    species: "The species recipe is for"
    genome_build: "The genome build the recipe is for"
    authors: "The author(s) of the data recipe being created, (This recipe)"
    package_version: "The version of the ggd package. (First time package = 1, updated package > 1)"
    data_version: "The version of the data (itself) being downloaded and processed (EX: dbsnp-127) If there is no data version apparent we recommend you use the date associated with the files or something else that can uniquely identify the 'version' of the data"
    data_provider: "The data provider where the data was accessed. (Example: UCSC, Ensembl, gnomAD, etc.)"
    summary: "A detailed comment describing the recipe"
    keyword: "A keyword to associate with the recipe. May be specified more that once. Please add enough keywords to better describe and distinguish the recipe"
    coordinate_base: "The genomic coordinate basing for the file(s) in the recipe. That is, the coordianances start at genomic coordinate 0 or 1, and the end coordinate is either inclusive (everything up to and including the end coordinate) or exlcusive (everthing up to but not including the end coordinate) Files that do not have coordiante basing, like fasta files, specify NA for not applicable."
    name: "The sub-name of the recipe being created. (e.g. cpg- islands, pfam-domains, gaps, etc.) This will not be the final name of the recipe, but will describe what data the recipe gets"
    script: "bash script that contains the commands to obtain and process the data"
  }
}