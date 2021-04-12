version 1.0

task Dadaist2region {
  input {
    String? first_pair
    String? second_pair
    File? reference
    File? regions
    Int? pattern_r_one
    Int? pattern_r_two
    Int? pool_size
    Int? min_score
    Int? max_reads
    Boolean? se
    Boolean? verbose
    Int dadaist_two_regions
  }
  command <<<
    dadaist2_region \
      ~{dadaist_two_regions} \
      ~{if defined(first_pair) then ("--first-pair " +  '"' + first_pair + '"') else ""} \
      ~{if defined(second_pair) then ("--second-pair " +  '"' + second_pair + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(pattern_r_one) then ("--pattern-R1 " +  '"' + pattern_r_one + '"') else ""} \
      ~{if defined(pattern_r_two) then ("--pattern-R2 " +  '"' + pattern_r_two + '"') else ""} \
      ~{if defined(pool_size) then ("--pool-size " +  '"' + pool_size + '"') else ""} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if defined(max_reads) then ("--max-reads " +  '"' + max_reads + '"') else ""} \
      ~{if (se) then "--se" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.9.0--h38613fd_1"
  }
  parameter_meta {
    first_pair: "First sequence in pair"
    second_pair: "Second sequence in pair (can be inferred)"
    reference: "FASTA file with a reference sequence, E. coli 16S by default"
    regions: "Regions names in JSON format, E. coli variable regions by default"
    pattern_r_one: "Tag in first pairs filenames [default: auto]"
    pattern_r_two: "Tag in second pairs filenames [default: auto]"
    pool_size: "Number of sequences/pairs to process per thread [default: 20]"
    min_score: "Minimum alignment score [default: 80]"
    max_reads: "Parse up to INT reads then quit [default: 1000]"
    se: "Force single end"
    verbose: "Verbose output"
    dadaist_two_regions: ""
  }
  output {
    File out_stdout = stdout()
  }
}