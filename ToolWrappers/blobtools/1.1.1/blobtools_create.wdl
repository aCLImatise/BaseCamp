version 1.0

task BlobtoolsCreate {
  input {
    File? in_file
    String? type
    File? hits_file
    File? tax_rule
    Float? min_score
    Float? min_diff
    Boolean? tax_collision_random
    File? nodes
    File? names
    File? db
    File? bam
    File? cas
    File? cov
    Boolean? calculate_cov
    String? out
    String? title
  }
  command <<<
    blobtools create \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(hits_file) then ("--hitsfile " +  '"' + hits_file + '"') else ""} \
      ~{if defined(tax_rule) then ("--taxrule " +  '"' + tax_rule + '"') else ""} \
      ~{if defined(min_score) then ("--min_score " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_diff) then ("--min_diff " +  '"' + min_diff + '"') else ""} \
      ~{if (tax_collision_random) then "--tax_collision_random" else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(cas) then ("--cas " +  '"' + cas + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if (calculate_cov) then "--calculate_cov" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "FASTA file of assembly. Headers are split at whitespaces."
    type: "Assembly program used to create FASTA. If specified,\\ncoverage will be parsed from FASTA header.\\n(Parsing supported for 'spades', 'velvet', 'platanus')"
    hits_file: "Hits file in format (qseqid\\ttaxid\\tbitscore)\\n(e.g. BLAST output \\\"--outfmt '6 qseqid staxids bitscore'\\\")\\nCan be specified multiple times"
    tax_rule: "...      Taxrule determines how taxonomy of blobs\\nis computed (by default both are calculated)\\n\\\"bestsum\\\"       : sum bitscore across all\\nhits for each taxonomic rank\\n\\\"bestsumorder\\\"  : sum bitscore across all\\nhits for each taxonomic rank.\\n- If first <TAX> file supplies hits, bestsum is calculated.\\n- If no hit is found, the next <TAX> file is used."
    min_score: "Minimal score necessary to be considered for taxonomy calculaton, otherwise set to 'no-hit'\\n[default: 0.0]"
    min_diff: "Minimal score difference between highest scoring\\ntaxonomies (otherwise \\\"unresolved\\\") [default: 0.0]"
    tax_collision_random: "Random allocation of taxonomy if highest scoring\\ntaxonomies have equal scores (otherwise \\\"unresolved\\\") [default: False]"
    nodes: "NCBI nodes.dmp file. Not required if '--db'"
    names: "NCBI names.dmp file. Not required if '--db'"
    db: "NodesDB file (default: $BLOBTOOLS/data/nodesDB.txt).  If --nodes, --names and --db\\nare all given and NODESDB does not exist, create it from NODES and NAMES."
    bam: "...              BAM file(s), can be specified multiple times"
    cas: "...              CAS file(s) (requires clc_mapping_info in $PATH), can be specified multiple times"
    cov: "...              COV file(s), can be specified multiple times"
    calculate_cov: "Legacy coverage when getting coverage from BAM (does not apply to COV parsing).\\nNew default is to estimate coverages which is faster,"
    out: "BlobDB output prefix"
    title: "Title of BlobDB [default: output prefix)"
  }
  output {
    File out_stdout = stdout()
    File out_hits_file = "${in_hits_file}"
  }
}