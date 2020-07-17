version 1.0

task Msa2vcf.py {
  input {
    Boolean? ref
    Boolean? all_sites
    Boolean? consensus
    Boolean? fast_a
    Boolean? haploid
    Boolean? help_format
    Boolean? output_file_optional
    File files
  }
  command <<<
    msa2vcf.py \
      ~{files} \
      ~{true="--REF" false="" ref} \
      ~{true="--allsites" false="" all_sites} \
      ~{true="--consensus" false="" consensus} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--haploid" false="" haploid} \
      ~{true="--helpFormat" false="" help_format} \
      ~{true="--output" false="" output_file_optional}
  >>>
  parameter_meta {
    ref: "reference name used for the CHROM column. Optional Default: chrUn"
    all_sites: "print all sites Default: false"
    consensus: "ruse this sequence as CONSENSUS"
    fast_a: "save computed fasta sequence in this file."
    haploid: "haploid output Default: false"
    help_format: "What kind of help. One of [usage,markdown,xml]."
    output_file_optional: "Output file. Optional . Default: stdout"
    files: ""
  }
}