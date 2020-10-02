version 1.0

task ReportAlignmentDifferences {
  input {
    Int? queries
    Int? o_q
    String? o
  }
  command <<<
    reportAlignmentDifferences \
      ~{if defined(queries) then ("-queries " +  '"' + queries + '"') else ""} \
      ~{if defined(o_q) then ("-i " +  '"' + o_q + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    queries: "-genomic G.fasta\\n-positions G.posDB\\n-aligns\\n-minmatchidentity 94\\n-minmatchcoverage 90\\n-mersize 18\\n-ignore 500\\n-numthreads 16\\n-verbose\\n-output Q.sim4db"
    o_q: "-o Q\\n"
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}