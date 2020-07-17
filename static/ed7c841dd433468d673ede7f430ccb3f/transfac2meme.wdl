version 1.0

task Transfac2meme {
  input {
    Boolean? rna
    Boolean? numbers
    Boolean? use_acc
    Boolean? use_name
    String? ids
    String? species
    String? skip
    String? bg
    String? pseudo
    Boolean? log_odds
    String? url
    String matrix_file
  }
  command <<<
    transfac2meme \
      ~{matrix_file} \
      ~{true="-rna" false="" rna} \
      ~{true="-numbers" false="" numbers} \
      ~{true="-use_acc" false="" use_acc} \
      ~{true="-use_name" false="" use_name} \
      ~{if defined(ids) then ("-ids " +  '"' + ids + '"') else ""} \
      ~{if defined(species) then ("-species " +  '"' + species + '"') else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{true="-logodds" false="" log_odds} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    rna: "output an RNA database instead of a DNA database."
    numbers: "use numbers instead of strings as motif names"
    use_acc: "use accession names (\"AC\") instead of IDs"
    use_name: "use names (\"NA\") instead of IDs"
    ids: "keep any motifs listed in the file"
    species: "keep only motifs for this species"
    skip: "skip this ID (may be repeated)"
    bg: "file with background frequencies of letters; default: uniform background"
    pseudo: "add <total pseudocounts> times letter background to each frequency; default: 0"
    log_odds: "print log-odds matrix, too; default: print frequency matrix only"
    url: "website for the motif; The ID (or accession) is substituted for MOTIF_NAME, the accession is substituted for MOTIF_AC and the  motif ID is substituted for MOTIF_ID; default: no url"
    matrix_file: ""
  }
}