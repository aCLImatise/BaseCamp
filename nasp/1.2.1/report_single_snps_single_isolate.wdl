version 1.0

task ReportSingleSnpsSingleIsolate.py {
  input {
    String inputInputMatrix
    String genomeGenomeName
  }
  command <<<
    report_single_snps_single_isolate.py \
      ~{if defined(inputInputMatrix) then ("--input_matrix " +  '"' + inputInputMatrix + '"') else ""} \
      ~{if defined(genomeGenomeName) then ("--genome_name " +  '"' + genomeGenomeName + '"') else ""}
  >>>
}