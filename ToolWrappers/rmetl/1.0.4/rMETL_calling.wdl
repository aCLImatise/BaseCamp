version 1.0

task RMETLCalling {
  input {
    Float? homozygous
    Float? heterozygous
    Int? min_mapq
    Float? clipping_threshold
    String? sample
    String? mei
    String t_jiang_at_hit_dot_edu_dot_cn
    String sam
    String reference
    String directory_output_callset
  }
  command <<<
    rMETL calling \
      ~{t_jiang_at_hit_dot_edu_dot_cn} \
      ~{sam} \
      ~{reference} \
      ~{directory_output_callset} \
      ~{if defined(homozygous) then ("--homozygous " +  '"' + homozygous + '"') else ""} \
      ~{if defined(heterozygous) then ("--heterozygous " +  '"' + heterozygous + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(clipping_threshold) then ("--clipping_threshold " +  '"' + clipping_threshold + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(mei) then ("--MEI " +  '"' + mei + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    homozygous: "The mininum score of a genotyping reported as a\\nhomozygous.[0.8]"
    heterozygous: "The mininum score of a genotyping reported as a\\nheterozygous.[0.3]"
    min_mapq: "Mininum mapping quality.[20]"
    clipping_threshold: "Mininum threshold of realignment clipping.[0.5]"
    sample: "Sample description"
    mei: "Enables rMETL to display MEI/MED only.[True]"
    t_jiang_at_hit_dot_edu_dot_cn: "positional arguments:"
    sam: "Input cluster.sam on STAGE realignment."
    reference: "The reference genome in fasta format."
    directory_output_callset: "Directory to output final callset."
  }
  output {
    File out_stdout = stdout()
  }
}