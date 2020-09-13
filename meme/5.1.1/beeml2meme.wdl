version 1.0

task Beeml2meme {
  input {
    File? bg
    Int? pseudo
    File? sg
    Boolean? print_logodds_matrix
    String? url
    String add
    String and
    String default
    File file
    String http
    File matrix_file
    String print
    String specifi_fy
    String substituted
    String website
    String a
    String for
    String var_17
    String total_pseudo_counts
    String use
    String with
    String motif_name
    String background
    String matrix
    String times
    String containing
    String frequencies
    String letter
    String motif
    String unipro_be
    String id
    String of
    String the
    String var_as
    String contents
    String letters
    String alternate
  }
  command <<<
    beeml2meme \
      ~{add} \
      ~{and} \
      ~{default} \
      ~{file} \
      ~{http} \
      ~{matrix_file} \
      ~{print} \
      ~{specifi_fy} \
      ~{substituted} \
      ~{website} \
      ~{a} \
      ~{for} \
      ~{var_17} \
      ~{total_pseudo_counts} \
      ~{use} \
      ~{with} \
      ~{motif_name} \
      ~{background} \
      ~{matrix} \
      ~{times} \
      ~{containing} \
      ~{frequencies} \
      ~{letter} \
      ~{motif} \
      ~{unipro_be} \
      ~{id} \
      ~{of} \
      ~{the} \
      ~{var_as} \
      ~{contents} \
      ~{letters} \
      ~{alternate} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if defined(sg) then ("-sg " +  '"' + sg + '"') else ""} \
      ~{if (print_logodds_matrix) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    bg: "file with background frequencies of letters\\ndefault: uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    sg: "specifify a file containing the contents of:\\nhttp://the_brain.bwh.harvard.edu/uniprobe/browse.php\\nand use the uniprobe ID as the alternate name"
    print_logodds_matrix: "print log-odds matrix, too;\\ndefault: print frequency matrix only"
    url: "website for the motif; The UNIPROBE ID is\\nsubstituted for MOTIF_NAME; default: no url\\n"
    add: ""
    and: ""
    default: ""
    file: ""
    http: ""
    matrix_file: ""
    print: ""
    specifi_fy: ""
    substituted: ""
    website: ""
    a: ""
    for: ""
    var_17: ""
    total_pseudo_counts: ""
    use: ""
    with: ""
    motif_name: ""
    background: ""
    matrix: ""
    times: ""
    containing: ""
    frequencies: ""
    letter: ""
    motif: ""
    unipro_be: ""
    id: ""
    of: ""
    the: ""
    var_as: ""
    contents: ""
    letters: ""
    alternate: ""
  }
  output {
    File out_stdout = stdout()
  }
}