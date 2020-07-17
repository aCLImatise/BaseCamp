version 1.0

task Tomtom {
  input {
    String? name_directory_not
    String? oc
    Boolean? x_alph
    String? b_file
    String? motif_pseudo
    String? use_motifs_specified
    String? mi
    Float? thresh
    Boolean? evalue
    String? dist
    Boolean? internal
    Int? min_overlap
    Boolean? norc
    Boolean? incomplete_scores
    Boolean? text
    Boolean? png
    Boolean? eps
    Boolean? no_ssc
    String? time
    Boolean? verbosity
    Boolean? version
    String query_file
    String target_file
  }
  command <<<
    tomtom \
      ~{query_file} \
      ~{target_file} \
      ~{if defined(name_directory_not) then ("-o " +  '"' + name_directory_not + '"') else ""} \
      ~{if defined(oc) then ("-oc " +  '"' + oc + '"') else ""} \
      ~{true="-xalph" false="" x_alph} \
      ~{if defined(b_file) then ("-bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(motif_pseudo) then ("-motif-pseudo " +  '"' + motif_pseudo + '"') else ""} \
      ~{if defined(use_motifs_specified) then ("-m " +  '"' + use_motifs_specified + '"') else ""} \
      ~{if defined(mi) then ("-mi " +  '"' + mi + '"') else ""} \
      ~{if defined(thresh) then ("-thresh " +  '"' + thresh + '"') else ""} \
      ~{true="-evalue" false="" evalue} \
      ~{if defined(dist) then ("-dist " +  '"' + dist + '"') else ""} \
      ~{true="-internal" false="" internal} \
      ~{if defined(min_overlap) then ("-min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{true="-norc" false="" norc} \
      ~{true="-incomplete-scores" false="" incomplete_scores} \
      ~{true="-text" false="" text} \
      ~{true="-png" false="" png} \
      ~{true="-eps" false="" eps} \
      ~{true="-no-ssc" false="" no_ssc} \
      ~{if defined(time) then ("-time " +  '"' + time + '"') else ""} \
      ~{true="-verbosity" false="" verbosity} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    name_directory_not: "Name of directory for output files; will not replace existing directory"
    oc: "Name of directory for output files; will replace existing directory"
    x_alph: "Convert the alphabet of the target motif databases to the alphabet of the query motif database assuming the core symbols of the target motif alphabet are a subset; default: reject differences"
    b_file: "Name of background file; default: use the background from the query motif database"
    motif_pseudo: "Apply the pseudocount to the query and target motifs; default: apply a pseudocount of 0.1"
    use_motifs_specified: "Use only query motifs with a specified id; may be repeated"
    mi: "Use only query motifs with a specifed index; may be repeated"
    thresh: "Significance threshold; default: 0.5"
    evalue: "Use E-value threshold; default: q-value"
    dist: "|ed|kullback|pearson|sandelin|blic1|blic5|llr1|llr5 Distance metric for scoring alignments; default: pearson"
    internal: "Only allow internal alignments; default: allow overhangs"
    min_overlap: "Minimum overlap between query and target; default: 1"
    norc: "Do not score the reverse complements of targets"
    incomplete_scores: "Ignore unaligned columns in computing scores default: use complete set of columns"
    text: "Output in text format (default is HTML)"
    png: "Create PNG logos; default: don't create PNG logos"
    eps: "Create EPS logos; default: don't create EPS logos"
    no_ssc: "Don't apply small-sample correction to logos; default: use small-sample correction"
    time: "quit before <time> CPU seconds consumed <time> must be > 0. The Default is unlimited CPU time"
    verbosity: "[1|2|3|4] Set the verbosity of the program; default: 2 (normal)"
    version: "Print the version and exit"
    query_file: ""
    target_file: ""
  }
}