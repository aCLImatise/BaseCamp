version 1.0

task IntersectionMatrix.py {
  input {
    Boolean? frac
    Boolean? enrichment
    String? genome
    String? iterations
    String? processes
    Boolean? test
    Boolean? verbose
    String beds
  }
  command <<<
    intersection_matrix.py \
      ~{beds} \
      ~{true="--frac" false="" frac} \
      ~{true="--enrichment" false="" enrichment} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{true="--test" false="" test} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    frac: "Instead of counts, report fraction overlapped"
    enrichment: "Run randomizations (default 1000, specify otherwise with --iterations) on each pairwise comparison and compute the enrichment score as (actual intersection count + 1) / (median randomized + 1)"
    genome: "Required argument if --enrichment is used. Needs to be a string assembly name like \"dm3\" or \"hg19\""
    iterations: "Number of randomizations to perform for enrichement scores"
    processes: "Number of CPUs to use for randomization"
    test: "Ignore any input BED files and use test BED files"
    verbose: "Be verbose: print which files are currently being intersected and timing info at the end."
    beds: "BED/GTF/GFF/VCF filenames, e.g., in a directory of bed files, you can use *.bed"
  }
}