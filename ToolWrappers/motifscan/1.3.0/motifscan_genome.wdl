version 1.0

task MotifscanGenome {
  input {
    Boolean? verbose
    Boolean? list
    Boolean? list_remote
    String? search
    Boolean? install
    String? uninstall
    String? name
    Array[String] local_genome_sequences
    File? local_gene_annotation
    String? remote
    Directory? output_dir
    String? database
    Boolean? clean
  }
  command <<<
    motifscan genome \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (list_remote) then "--list-remote" else ""} \
      ~{if defined(search) then ("--search " +  '"' + search + '"') else ""} \
      ~{if (install) then "--install" else ""} \
      ~{if defined(uninstall) then ("--uninstall " +  '"' + uninstall + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(local_genome_sequences) then ("-i " +  '"' + local_genome_sequences + '"') else ""} \
      ~{if defined(local_gene_annotation) then ("-a " +  '"' + local_gene_annotation + '"') else ""} \
      ~{if defined(remote) then ("--remote " +  '"' + remote + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (clean) then "--clean" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/motifscan:1.3.0--py36h4c5857e_0"
  }
  parameter_meta {
    verbose: "Enable verbose log messages."
    list: "Display installed genome assemblies."
    list_remote: "Display available remote genome assemblies."
    search: "Search for genome assemblies in a remote database."
    install: "Install a new genome assembly."
    uninstall: "Uninstall a genome assembly."
    name: "Name of the genome assembly to be installed."
    local_genome_sequences: "Local genome sequences file(s) in FASTA format."
    local_gene_annotation: "Local gene annotation (refGene.txt) file."
    remote: "Download required data files from a remote assembly."
    output_dir: "Write to a given directory instead of the default\\ndirectory."
    database: "Which remote database is used to list/install/search\\ngenome assemblies. Default: ucsc"
    clean: "Clean the download directory after installation."
  }
  output {
    File out_stdout = stdout()
  }
}