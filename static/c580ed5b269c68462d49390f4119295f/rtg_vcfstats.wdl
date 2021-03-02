version 1.0

task RtgVcfstats {
  input {
    Boolean? known
    Boolean? novel
    Int? sample
    Int? allele_lengths
    String times
  }
  command <<<
    rtg vcfstats \
      ~{times} \
      ~{if (known) then "--known" else ""} \
      ~{if (novel) then "--novel" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(allele_lengths) then ("--allele-lengths " +  '"' + allele_lengths + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    known: "only calculate statistics for known variants (Default is\\nto ignore known/novel status)"
    novel: "only calculate statistics for novel variants (Default is\\nto ignore known/novel status)"
    sample: "only calculate statistics for the specified sample\\n(Default is to include all samples). May be specified 0\\nor more times"
    allele_lengths: "variant length histogram"
    times: "Reporting"
  }
  output {
    File out_stdout = stdout()
  }
}