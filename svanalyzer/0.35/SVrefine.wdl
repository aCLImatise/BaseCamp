version 1.0

task SVrefine {
  input {
    File? sv_regions
    Boolean? includes_eqs
    Boolean? verbose
    String? bam
    File? regions
    File? ref_fast_a
    File? query_fast_a
    File? out_vcf
    File? out_ref
    File? no_cov
  }
  command <<<
    SVrefine \
      ~{if defined(sv_regions) then ("--svregions " +  '"' + sv_regions + '"') else ""} \
      ~{true="--includeseqs" false="" includes_eqs} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(ref_fast_a) then ("--ref_fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(query_fast_a) then ("--query_fasta " +  '"' + query_fast_a + '"') else ""} \
      ~{if defined(out_vcf) then ("--outvcf " +  '"' + out_vcf + '"') else ""} \
      ~{if defined(out_ref) then ("--outref " +  '"' + out_ref + '"') else ""} \
      ~{if defined(no_cov) then ("--nocov " +  '"' + no_cov + '"') else ""}
  >>>
  parameter_meta {
    sv_regions: "Specify the path to which to write a BED file containing the widened coordinates of structural variants. These are the same coordinates reported in the \"WIDENEDREF\" tag in the variant VCF. (Optional)."
    includes_eqs: "Write sequences from the reference FASTA file into the \"REF\" and \"ALT\" fields of the VCF."
    verbose: "Write verbose output, debugging information, etc. to the log file."
    bam: ""
    regions: ""
    ref_fast_a: ""
    query_fast_a: ""
    out_vcf: ""
    out_ref: ""
    no_cov: ""
  }
}