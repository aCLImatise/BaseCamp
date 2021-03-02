version 1.0

task Transfac2meme {
  input {
    Boolean? rna
    Boolean? numbers
    Boolean? use_acc
    Boolean? use_name
    File? ids
    String? species
    String? skip
    File? bg
    Int? pseudo
    Boolean? log_odds
    String? url
    File matrix_file
  }
  command <<<
    transfac2meme \
      ~{matrix_file} \
      ~{if (rna) then "-rna" else ""} \
      ~{if (numbers) then "-numbers" else ""} \
      ~{if (use_acc) then "-use_acc" else ""} \
      ~{if (use_name) then "-use_name" else ""} \
      ~{if defined(ids) then ("-ids " +  '"' + ids + '"') else ""} \
      ~{if defined(species) then ("-species " +  '"' + species + '"') else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (log_odds) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    rna: "output an RNA database instead of a DNA database."
    numbers: "use numbers instead of strings as motif names"
    use_acc: "use accession names (\\\"AC\\\") instead of IDs"
    use_name: "use names (\\\"NA\\\") instead of IDs"
    ids: "keep any motifs listed in the file"
    species: "keep only motifs for this species"
    skip: "skip this ID (may be repeated)"
    bg: "file with background frequencies of letters;\\ndefault: uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    log_odds: "print log-odds matrix, too;\\ndefault: print frequency matrix only"
    url: "website for the motif; The ID (or accession) is\\nsubstituted for MOTIF_NAME, the accession\\nis substituted for MOTIF_AC and the\\nmotif ID is substituted for MOTIF_ID; default: no url"
    matrix_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}