version 1.0

task MetapiInit {
  input {
    String? workdir
    Int? samples
    String? begin
  }
  command <<<
    metapi init \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(begin) then ("--begin " +  '"' + begin + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metapi:1.0.5--py_0"
  }
  parameter_meta {
    workdir: "project workdir, default: ./ (default: ./)"
    samples: "desired input:\\nsamples list, tsv format required.\\nif begin from trimming, rmhost, or assembly:\\nif it is fastq:\\nthe header is: [id, fq1, fq2]\\nif it is sra:\\nthe header is: [id, sra]\\nif begin from simulate:\\nthe header is: [id, genome, abundance, reads_num, model]"
    begin: "pipeline starting point (default: trimming)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}