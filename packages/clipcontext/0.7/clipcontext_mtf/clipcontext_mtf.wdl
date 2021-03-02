version 1.0

task ClipcontextMtf {
  input {
    File? gtf
    File? gen
    Directory? out
    Int? data_id
    File? in
    String? motif
    String files
  }
  command <<<
    clipcontext mtf \
      ~{files} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(gen) then ("--gen " +  '"' + gen + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(data_id) then ("--data-id " +  '"' + data_id + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/clipcontext:0.7--py_0"
  }
  parameter_meta {
    gtf: "Genomic annotations (hg38) GTF file (.gtf or .gtf.gz).\\nRequired for --in type (2) or (3)"
    gen: "Genomic sequences (hg38) .2bit file. Required for --in type\\n(2) or (3)"
    out: "Output results folder, to store motif hit regions in BED"
    data_id: "Data ID (column 1) for --stats-out output table to store\\nmotif search results (requires --stats-out to be set)"
    in: "Three different inputs possible: (1) output folder of\\nclipcontext g2t or clipcontext t2g with genomic and\\ntranscript context sequence sets in which to look for given\\n--motif. (2) BED file (genomic or transcript regions) in\\nwhich to look for given --motif. (3) Transcript list file,\\nto search for --motif in the respective transcript\\nsequences. Note that (2)+(3) need --gtf and --gen"
    motif: "Motif or regular expression (RNA letters!) to search for in"
    files: "--stats-out str  Output table to store motif search results in (for --in"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}