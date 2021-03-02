version 1.0

task CheckmLineageSet {
  input {
    Int? unique
    Int? multi
    Boolean? force_domain
    Boolean? no_refinement
    Boolean? quiet
    Directory? tmpdir
    String tree_dir
    String marker_file
  }
  command <<<
    checkm lineage_set \
      ~{tree_dir} \
      ~{marker_file} \
      ~{if defined(unique) then ("--unique " +  '"' + unique + '"') else ""} \
      ~{if defined(multi) then ("--multi " +  '"' + multi + '"') else ""} \
      ~{if (force_domain) then "--force_domain" else ""} \
      ~{if (no_refinement) then "--no_refinement" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    unique: "minimum number of unique phylogenetic markers required to use lineage-specific marker set (default: 10)"
    multi: "maximum number of multi-copy phylogenetic markers before defaulting to domain-level marker set (default: 10)"
    force_domain: "use domain-level sets for all bins"
    no_refinement: "do not perform lineage-specific marker set refinement"
    quiet: "suppress console output"
    tmpdir: "specify an alternative directory for temporary files"
    tree_dir: "directory specified during tree command"
    marker_file: "output file describing marker set for each bin"
  }
  output {
    File out_stdout = stdout()
  }
}