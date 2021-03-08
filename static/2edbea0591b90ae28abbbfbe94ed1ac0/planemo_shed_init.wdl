version 1.0

task PlanemoShedInit {
  input {
    File? from_workflow
    String? description
    String? long_description
    String? remote_repository_url
    String? homepage_url
    Boolean? category
    String? owner
    Directory? name
    Boolean? force
    String project
  }
  command <<<
    planemo shed_init \
      ~{project} \
      ~{if defined(from_workflow) then ("--from_workflow " +  '"' + from_workflow + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(long_description) then ("--long_description " +  '"' + long_description + '"') else ""} \
      ~{if defined(remote_repository_url) then ("--remote_repository_url " +  '"' + remote_repository_url + '"') else ""} \
      ~{if defined(homepage_url) then ("--homepage_url " +  '"' + homepage_url + '"') else ""} \
      ~{if (category) then "--category" else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    from_workflow: "Attempt to generate repository dependencies\\nfrom specified workflow."
    description: "Specify repository description for\\n.shed.yml."
    long_description: "Specify repository long_description for\\n.shed.yml."
    remote_repository_url: "Specify repository remote_repository_url for\\n.shed.yml."
    homepage_url: "Specify repository homepage_url for\\n.shed.yml."
    category: "[Assembly|ChIP-seq|Combinatorial Selections|Computational chemistry|Constructive Solid Geometry|Convert Formats|Data Export|Data Managers|Data Source|Entomology|Epigenetics|Fasta Manipulation|Fastq Manipulation|Flow Cytometry Analysis|Genome annotation|Genome editing|Genome-Wide Association Study|Genomic Interval Operations|Graphics|Imaging|Machine Learning|Metabolomics|Metagenomics|Micro-array Analysis|Molecular Dynamics|Next Gen Mappers|NLP|Ontology Manipulation|Phylogenetics|Proteomics|RNA|SAM|Sequence Analysis|Statistics|Systems Biology|Text Manipulation|Tool Dependency Packages|Tool Generators|Transcriptomics|Variant Analysis|Visualization|Web Services]\\nSpecify repository category for .shed.yml\\n(may specify multiple)."
    owner: "Tool Shed repository owner (username)."
    name: "Tool Shed repository name (defaults to the\\ninferred tool directory name)."
    force: "Overwrite existing files if present."
    project: ""
  }
  output {
    File out_stdout = stdout()
  }
}