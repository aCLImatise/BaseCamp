version 1.0

task GgdMakerecipe {
  input {
    String? channel
    String? dependency
    File? extra_file
    String? platform
    String? species
    String? genome_build
    String? authors
    Int? package_version
    Int? data_version
    String? data_provider
    String? summary
    String? keyword
    String? coordinate_base
    String? name
  }
  command <<<
    ggd make_recipe \
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
  runtime {
    docker: "quay.io/biocontainers/ggd:1.1.3--pyh3252c3a_0"
  }
  parameter_meta {
    channel: "the ggd channel to use. (Default = genomics)"
    dependency: "any software dependencies (in bioconda, conda-forge)\\nor data-dependency (in ggd). May be as many times as\\nneeded."
    extra_file: "any files that the recipe creates that are not a *.gz\\nand *.gz.tbi pair or *.fa and *.fai pair. May be used\\nmore than once"
    platform: "Whether to use noarch as the platform or the system\\nplatform. If set to 'none' the system platform will be\\nused. (Default = noarch. Noarch means no architecture\\nand is platform agnostic.)"
    species: "The species recipe is for"
    genome_build: "The genome build the recipe is for"
    authors: "The author(s) of the data recipe being created, (This\\nrecipe)"
    package_version: "The version of the ggd package. (First time package =\\n1, updated package > 1)"
    data_version: "The version of the data (itself) being downloaded and\\nprocessed (EX: dbsnp-127) If there is no data version\\napparent we recommend you use the date associated with\\nthe files or something else that can uniquely identify\\nthe 'version' of the data"
    data_provider: "The data provider where the data was accessed.\\n(Example: UCSC, Ensembl, gnomAD, etc.)"
    summary: "A detailed comment describing the recipe"
    keyword: "A keyword to associate with the recipe. May be\\nspecified more that once. Please add enough keywords\\nto better describe and distinguish the recipe"
    coordinate_base: "The genomic coordinate basing for the file(s) in the\\nrecipe. That is, the coordinates start at genomic\\ncoordinate 0 or 1, and the end coordinate is either\\ninclusive (everything up to and including the end\\ncoordinate) or exclusive (everything up to but not\\nincluding the end coordinate) Files that do not have\\ncoordinate basing, like fasta files, specify NA for\\nnot applicable."
    name: "The sub-name of the recipe being created. (e.g. cpg-\\nislands, pfam-domains, gaps, etc.) This will not be\\nthe final name of the recipe, but will specific to the\\ndata gathered and processed by the recipe"
  }
  output {
    File out_stdout = stdout()
  }
}