version 1.0

task Msa2vcfpy {
  input {
    Boolean? ref
    Boolean? all_sites
    Boolean? consensus
    Boolean? fast_a
    Boolean? haploid
    Boolean? help_format
    File? output_file_optional
    String files
  }
  command <<<
    msa2vcf_py \
      ~{files} \
      ~{if (ref) then "--REF" else ""} \
      ~{if (all_sites) then "--allsites" else ""} \
      ~{if (consensus) then "--consensus" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (haploid) then "--haploid" else ""} \
      ~{if (help_format) then "--helpFormat" else ""} \
      ~{if (output_file_optional) then "--output" else ""}
  >>>
  parameter_meta {
    ref: "reference name used for the CHROM column. Optional\\nDefault: chrUn"
    all_sites: "print all sites\\nDefault: false"
    consensus: "ruse this sequence as CONSENSUS"
    fast_a: "save computed fasta sequence in this file."
    haploid: "haploid output\\nDefault: false"
    help_format: "What kind of help. One of [usage,markdown,xml]."
    output_file_optional: "Output file. Optional . Default: stdout"
    files: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_optional = "${in_output_file_optional}"
  }
}