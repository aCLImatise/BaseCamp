version 1.0

task BlobtoolsView {
  input {
    File? blobdb_file_created
    String? out
    File? list
    String? tax_rule
    String? rank
    Boolean? hits
    Boolean? concoct
    Boolean? cov
    String? experimental
    Boolean? notable
  }
  command <<<
    blobtools view \
      ~{if defined(blobdb_file_created) then ("--input " +  '"' + blobdb_file_created + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(tax_rule) then ("--taxrule " +  '"' + tax_rule + '"') else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if (hits) then "--hits" else ""} \
      ~{if (concoct) then "--concoct" else ""} \
      ~{if (cov) then "--cov" else ""} \
      ~{if defined(experimental) then ("--experimental " +  '"' + experimental + '"') else ""} \
      ~{if (notable) then "--notable" else ""}
  >>>
  parameter_meta {
    blobdb_file_created: "BlobDB file (created with \\\"blobtools create\\\")"
    out: "Output prefix"
    list: "List of sequence names (file)."
    tax_rule: "Taxrule used for computing taxonomy\\n(supported: \\\"bestsum\\\", \\\"bestsumorder\\\")\\n[default: bestsum]"
    rank: "...     Taxonomic rank(s) at which output will be written.\\n(supported: 'species', 'genus', 'family', 'order',\\n'phylum', 'superkingdom', 'all') [default: phylum]"
    hits: "Displays taxonomic hits from tax files\\nthat contributed to the taxonomy."
    concoct: "Generate concoct files [default: False]"
    cov: "Generate cov files [default: False]"
    experimental: "Experimental output [default: False]"
    notable: "Do not generate table view [default: False]"
  }
  output {
    File out_stdout = stdout()
  }
}