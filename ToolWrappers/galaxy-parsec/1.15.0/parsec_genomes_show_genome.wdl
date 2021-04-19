version 1.0

task ParsecGenomesShowGenome {
  input {
    Int? num
    String? chrom
    String? low
    String? high
    String id
  }
  command <<<
    parsec genomes show_genome \
      ~{id} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(low) then ("--low " +  '"' + low + '"') else ""} \
      ~{if defined(high) then ("--high " +  '"' + high + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    num: "num"
    chrom: "chrom"
    low: "low"
    high: "high"
    id: ""
  }
  output {
    File out_stdout = stdout()
  }
}