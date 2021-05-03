version 1.0

task MetapiInit {
  input {
    String? workdir
    Int? samples
    String? begin
    String? trimmer
    String? rm_hoster
    String? assembler
    Array[String] binner
  }
  command <<<
    metapi init \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(begin) then ("--begin " +  '"' + begin + '"') else ""} \
      ~{if defined(trimmer) then ("--trimmer " +  '"' + trimmer + '"') else ""} \
      ~{if defined(rm_hoster) then ("--rmhoster " +  '"' + rm_hoster + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(binner) then ("--binner " +  '"' + binner + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metapi:1.1.0--pyhdfd78af_0"
  }
  parameter_meta {
    workdir: "project workdir (default: ./)"
    samples: "desired input:\\nsamples list, tsv format required.\\nif begin from trimming, rmhost, or assembly:\\nif it is fastq:\\nthe header is: [id, fq1, fq2]\\nif it is sra:\\nthe header is: [id, sra]\\nif begin from simulate:\\nthe header is: [id, genome, abundance, reads_num, model]"
    begin: "pipeline starting point (default: trimming)"
    trimmer: "which trimmer used (default: fastp)"
    rm_hoster: "which rmhoster used (default: bowtie2)"
    assembler: "[{idba-ud,megahit,metaspades,spades,opera-ms} ...]\\nwhich assembler used, required when begin with binning, can be changed in config.yaml (default: ['metaspades'])"
    binner: "wchich binner used (default: ['metabat2', 'concoct', 'maxbin2', 'graphbin2', 'vamb', 'dastools'])\\n"
  }
  output {
    File out_stdout = stdout()
  }
}