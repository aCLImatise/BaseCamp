version 1.0

task Meme2meme {
  input {
    Boolean? consensus
    Boolean? numbers
    File? bg
    Boolean? log_odds
    String? url
    Boolean? force_url
    Boolean? x_alph
    File meme_file
  }
  command <<<
    meme2meme \
      ~{meme_file} \
      ~{if (consensus) then "-consensus" else ""} \
      ~{if (numbers) then "-numbers" else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if (log_odds) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""} \
      ~{if (force_url) then "-forceurl" else ""} \
      ~{if (x_alph) then "-xalph" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    consensus: "numeric names are swapped for an IUPAC\\nconsensus; default: use existing names"
    numbers: "use numbers instead of strings for motif names;\\ndefault: use existing ID"
    bg: "file with background frequencies of letters;\\ndefault: use first file background"
    log_odds: "print log-odds matrix as well as frequency matrix;\\ndefault: frequency matrix only"
    url: "website for the motif if it doesn't have one\\nalready; The motif name is substituted for\\nMOTIF_NAME; default: use existing url"
    force_url: "Existing urls are ignored"
    x_alph: "Convert all motifs to use the same alphabet as\\nspecified in the first file which must be a superset;\\ndefault: all alphabets must be identical"
    meme_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}