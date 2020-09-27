version 1.0

task CovermGenome {
  input {
    Directory? coupled
    String? contig_end_exclusion
  }
  command <<<
    coverm genome \
      ~{if defined(coupled) then ("--coupled " +  '"' + coupled + '"') else ""} \
      ~{if defined(contig_end_exclusion) then ("--contig-end-exclusion " +  '"' + contig_end_exclusion + '"') else ""}
  >>>
  parameter_meta {
    coupled: "...\\n--genome-definition <genome-definition>\\n--genome-fasta-directory <genome-fasta-directory>\\n--genome-fasta-files <genome-fasta-files>...\\n--interleaved <interleaved>...\\n-1 <read1>...\\n-2 <read2>...\\n--separator <separator>\\n--single <single>..."
    contig_end_exclusion: ""
  }
  output {
    File out_stdout = stdout()
  }
}