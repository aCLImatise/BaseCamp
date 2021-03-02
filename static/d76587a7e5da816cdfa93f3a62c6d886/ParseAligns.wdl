version 1.0

task ParseAligns {
  input {
    Int? min_align
    File? dist
    File? frag
    File? hist
    Boolean? sam
    Boolean? k_aligner
    String? cover
    Boolean? verbose
    Boolean? k
    String km_er
  }
  command <<<
    ParseAligns \
      ~{km_er} \
      ~{if defined(min_align) then ("--min-align " +  '"' + min_align + '"') else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(frag) then ("--frag " +  '"' + frag + '"') else ""} \
      ~{if defined(hist) then ("--hist " +  '"' + hist + '"') else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (k_aligner) then "--kaligner" else ""} \
      ~{if defined(cover) then ("--cover " +  '"' + cover + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (k) then "-k" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_align: "minimum alignment length"
    dist: "write distance estimates to this file"
    frag: "write fragment sizes to this file"
    hist: "write the fragment size histogram to FILE"
    sam: "alignments are in SAM format"
    k_aligner: "alignments are in KAligner format"
    cover: "coverage cut-off for distance estimates"
    verbose: "display verbose output"
    k: ""
    km_er: ""
  }
  output {
    File out_stdout = stdout()
  }
}