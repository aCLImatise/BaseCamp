version 1.0

task Wig2hintspl {
  input {
    Int? width
    Int? margin
    Float? min_thresh
    Float? min_score
    String? type
    String? pri
    Int? radius
    String? strand
    Int? prune
    String? src
    File? ucsc
  }
  command <<<
    wig2hints_pl \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(margin) then ("--margin " +  '"' + margin + '"') else ""} \
      ~{if defined(min_thresh) then ("--minthresh " +  '"' + min_thresh + '"') else ""} \
      ~{if defined(min_score) then ("--minscore " +  '"' + min_score + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(pri) then ("--pri " +  '"' + pri + '"') else ""} \
      ~{if defined(radius) then ("--radius " +  '"' + radius + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(prune) then ("--prune " +  '"' + prune + '"') else ""} \
      ~{if defined(src) then ("--src " +  '"' + src + '"') else ""} \
      ~{if defined(ucsc) then ("--UCSC " +  '"' + ucsc + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    width: "Default: 40"
    margin: "Default: 20"
    min_thresh: "Default: 0.4 horizontal cutoff for determining intervals"
    min_score: "Default: 0.4 consider only intervals with an average score at least this high"
    type: "Default: print this in the third column (default:\\\"CDSpart\\\")"
    pri: "print priority n in last column"
    radius: "length of hint interval is 2*radius+1"
    strand: "Default: \\\".\\\" print this in the strand column"
    prune: "Default: 0 (off). Remove boundary areas that have coverage less than f*100% of the average over the island"
    src: "Default: \\\"X\\\" print src=s in the last column"
    ucsc: "Filename for track of UCSC genome browser custom track"
  }
  output {
    File out_stdout = stdout()
  }
}