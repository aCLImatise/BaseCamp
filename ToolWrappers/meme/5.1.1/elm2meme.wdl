version 1.0

task Elm2meme {
  input {
    Boolean? allow_anchored_motifs
    File? bg
    Int? pseudo
    Boolean? print_logodds_matrix
    String? url
    String converts
    File elm_file
    String writes
    String add
    String allow
    String default
    File var_file
    String is
    String print
    String website
    String elm
    String var_16
    String for
    String var_18
    String substituted
    String to
    String total_pseudo_counts
    String usage
    String with
    String background
    String matrix
    String motifs
    String standard
    String the
    String times
    String motif_name
    String frequencies
    String into
    String letter
    String motif
    String meme
    String of
    String letters
  }
  command <<<
    elm2meme \
      ~{converts} \
      ~{elm_file} \
      ~{writes} \
      ~{add} \
      ~{allow} \
      ~{default} \
      ~{var_file} \
      ~{is} \
      ~{print} \
      ~{website} \
      ~{elm} \
      ~{var_16} \
      ~{for} \
      ~{var_18} \
      ~{substituted} \
      ~{to} \
      ~{total_pseudo_counts} \
      ~{usage} \
      ~{with} \
      ~{background} \
      ~{matrix} \
      ~{motifs} \
      ~{standard} \
      ~{the} \
      ~{times} \
      ~{motif_name} \
      ~{frequencies} \
      ~{into} \
      ~{letter} \
      ~{motif} \
      ~{meme} \
      ~{of} \
      ~{letters} \
      ~{if (allow_anchored_motifs) then "-anchored" else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (print_logodds_matrix) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    allow_anchored_motifs: "allow anchored motifs;\\ndefault: skip anchored motifs"
    bg: "file with background frequencies of letters;\\ndefault: uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    print_logodds_matrix: "print log-odds matrix, too;\\ndefault: print frequency matrix only"
    url: "website for the motif; The motif name\\nis substituted for MOTIF_NAME;"
    converts: ""
    elm_file: ""
    writes: ""
    add: ""
    allow: ""
    default: ""
    var_file: ""
    is: ""
    print: ""
    website: ""
    elm: ""
    var_16: ""
    for: ""
    var_18: ""
    substituted: ""
    to: ""
    total_pseudo_counts: ""
    usage: ""
    with: ""
    background: ""
    matrix: ""
    motifs: ""
    standard: ""
    the: ""
    times: ""
    motif_name: ""
    frequencies: ""
    into: ""
    letter: ""
    motif: ""
    meme: ""
    of: ""
    letters: ""
  }
  output {
    File out_stdout = stdout()
  }
}