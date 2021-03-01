version 1.0

task Priority2meme {
  input {
    Boolean? numbers
    File? bg
    Int? pseudo
    Boolean? log_odds
    String? url
    File matrix_file
  }
  command <<<
    priority2meme \
      ~{matrix_file} \
      ~{if (numbers) then "-numbers" else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (log_odds) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    numbers: "use numbers instead of strings as motif names;"
    bg: "file with background frequencies of letters;\\ndefault: uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    log_odds: "print log-odds matrix, too;\\ndefault: print frequency matrix only"
    url: "website for the motif; default: no url"
    matrix_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}