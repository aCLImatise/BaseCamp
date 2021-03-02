version 1.0

task Vcf2snvAlignmentpl {
  input {
    Int? consolidate_vcf
    Boolean? invalid_pos
    Boolean? format
    File? output_base
    Boolean? reference
    Boolean? fast_a
    Boolean? num_cpus
    Boolean? bcf_tools_path
    Int v_three
  }
  command <<<
    vcf2snv_alignment_pl \
      ~{v_three} \
      ~{if defined(consolidate_vcf) then ("--consolidate_vcf " +  '"' + consolidate_vcf + '"') else ""} \
      ~{if (invalid_pos) then "--invalid-pos" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (output_base) then "--output-base" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (num_cpus) then "--numcpus" else ""} \
      ~{if (bcf_tools_path) then "--bcftools-path" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    consolidate_vcf: "=files/dataset2.dat --consolidate_vcf"
    invalid_pos: "[invalid positions TSV file] --numcpus 5 --bcftools-path"
    format: "[OPTIONAL]\\nThe format to output the alignment to, one of the Bio::AlignIO\\nsupported formats (default: fasta)."
    output_base: "[REQUIRED]\\nThe output base name for the alignment file(s)."
    reference: "[OPTIONAL]\\nThe name of the reference to use in the alignment (default:\\nreference)."
    fast_a: "[REQUIRED]\\nFasta file."
    num_cpus: "[REQUIRED]\\nDesired number of CPUs for the job."
    bcf_tools_path: "[OPTIONAL]\\nPath to BCFTools."
    v_three: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_base = "${in_output_base}"
  }
}