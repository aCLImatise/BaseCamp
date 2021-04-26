version 1.0

task Fusw {
  input {
    File? query
    File? target
    File? id
    Boolean? show_aln
    Int? pool_size
    Int? min_score
    Float? pct_id
    Boolean? verbose
  }
  command <<<
    fu_sw \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if (show_aln) then "--showaln" else ""} \
      ~{if defined(pool_size) then ("--pool-size " +  '"' + pool_size + '"') else ""} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if defined(pct_id) then ("--pct-id " +  '"' + pct_id + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.9.5--h38613fd_0"
  }
  parameter_meta {
    query: "File with the sequence(s) to align against target"
    target: "File with the target sequence(s)"
    id: "Align only against the sequence named `ID` in the target file"
    show_aln: "Show graphical alignment"
    pool_size: "Number of sequences/pairs to process per thread [default: 20]"
    min_score: "Minimum alignment score [default: 80]"
    pct_id: "Minimum percentage of identity [default: 85]"
    verbose: "Verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}