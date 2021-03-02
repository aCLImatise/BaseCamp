version 1.0

task Tamo2meme {
  input {
    String? skip
    Boolean? numbers
    File? bg
    Int? pseudo
    Boolean? log_odds
    String? url
    File tamo_file
  }
  command <<<
    tamo2meme \
      ~{tamo_file} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if (numbers) then "-numbers" else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (log_odds) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    skip: "skip this ID (may be repeated)"
    numbers: "use numbers instead of strings as motif names"
    bg: "file with background frequencies of letters;\\ndefault: uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    log_odds: "print log-odds matrix, too;\\ndefault: print frequency matrix only"
    url: "website for the motif; The tamo ID is\\nsubstituted for MOTIF_NAME; default: no url\\n"
    tamo_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}