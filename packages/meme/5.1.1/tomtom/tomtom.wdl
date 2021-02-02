version 1.0

task Tomtom {
  input {
    Directory? name_directory_not
    Directory? oc
    Boolean? x_alph
    File? b_file
    Float? motif_pseudo
    String? use_specified_repeated
    String? mi
    Float? thresh
    Boolean? evalue
    Int? dist
    Boolean? internal
    Int? min_overlap
    Boolean? norc
    Boolean? incomplete_scores
    Boolean? text
    Boolean? png
    Boolean? eps
    Boolean? no_ssc
    Int? time
    Boolean? verbosity
    Boolean? version
    File query_file
    File target_file
  }
  command <<<
    tomtom \
      ~{query_file} \
      ~{target_file} \
      ~{if defined(name_directory_not) then ("-o " +  '"' + name_directory_not + '"') else ""} \
      ~{if defined(oc) then ("-oc " +  '"' + oc + '"') else ""} \
      ~{if (x_alph) then "-xalph" else ""} \
      ~{if defined(b_file) then ("-bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(motif_pseudo) then ("-motif-pseudo " +  '"' + motif_pseudo + '"') else ""} \
      ~{if defined(use_specified_repeated) then ("-m " +  '"' + use_specified_repeated + '"') else ""} \
      ~{if defined(mi) then ("-mi " +  '"' + mi + '"') else ""} \
      ~{if defined(thresh) then ("-thresh " +  '"' + thresh + '"') else ""} \
      ~{if (evalue) then "-evalue" else ""} \
      ~{if defined(dist) then ("-dist " +  '"' + dist + '"') else ""} \
      ~{if (internal) then "-internal" else ""} \
      ~{if defined(min_overlap) then ("-min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if (norc) then "-norc" else ""} \
      ~{if (incomplete_scores) then "-incomplete-scores" else ""} \
      ~{if (text) then "-text" else ""} \
      ~{if (png) then "-png" else ""} \
      ~{if (eps) then "-eps" else ""} \
      ~{if (no_ssc) then "-no-ssc" else ""} \
      ~{if defined(time) then ("-time " +  '"' + time + '"') else ""} \
      ~{if (verbosity) then "-verbosity" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    name_directory_not: "Name of directory for output files;\\nwill not replace existing directory"
    oc: "Name of directory for output files;\\nwill replace existing directory"
    x_alph: "Convert the alphabet of the target motif databases\\nto the alphabet of the query motif database\\nassuming the core symbols of the target motif\\nalphabet are a subset; default: reject differences"
    b_file: "Name of background file;\\ndefault: use the background from the query\\nmotif database"
    motif_pseudo: "Apply the pseudocount to the query and target motifs;\\ndefault: apply a pseudocount of 0.1"
    use_specified_repeated: "Use only query motifs with a specified id;\\nmay be repeated"
    mi: "Use only query motifs with a specifed index;\\nmay be repeated"
    thresh: "Significance threshold; default: 0.5"
    evalue: "Use E-value threshold; default: q-value"
    dist: "|ed|kullback|pearson|sandelin|blic1|blic5|llr1|llr5\\nDistance metric for scoring alignments;\\ndefault: pearson"
    internal: "Only allow internal alignments;\\ndefault: allow overhangs"
    min_overlap: "Minimum overlap between query and target;\\ndefault: 1"
    norc: "Do not score the reverse complements of targets"
    incomplete_scores: "Ignore unaligned columns in computing scores\\ndefault: use complete set of columns"
    text: "Output in text format (default is HTML)"
    png: "Create PNG logos; default: don't create PNG logos"
    eps: "Create EPS logos; default: don't create EPS logos"
    no_ssc: "Don't apply small-sample correction to logos;\\ndefault: use small-sample correction"
    time: "quit before <time> CPU seconds consumed\\n<time> must be > 0. The Default is unlimited CPU time"
    verbosity: "[1|2|3|4]\\nSet the verbosity of the program; default: 2 (normal)"
    version: "Print the version and exit"
    query_file: ""
    target_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_name_directory_not = "${in_name_directory_not}"
    Directory out_oc = "${in_oc}"
  }
}