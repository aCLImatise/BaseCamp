version 1.0

task BreakPointInspector {
  input {
    String? contamination_fraction
    String? output_vcf
    String? proximity
    String? ref
    String? ref_slice
    String? tumor
    String? tumor_slice
    String? vcf
    String? arg
  }
  command <<<
    break-point-inspector \
      ~{arg} \
      ~{if defined(contamination_fraction) then ("-contamination_fraction " +  '"' + contamination_fraction + '"') else ""} \
      ~{if defined(output_vcf) then ("-output_vcf " +  '"' + output_vcf + '"') else ""} \
      ~{if defined(proximity) then ("-proximity " +  '"' + proximity + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(ref_slice) then ("-ref_slice " +  '"' + ref_slice + '"') else ""} \
      ~{if defined(tumor) then ("-tumor " +  '"' + tumor + '"') else ""} \
      ~{if defined(tumor_slice) then ("-tumor_slice " +  '"' + tumor_slice + '"') else ""} \
      ~{if defined(vcf) then ("-vcf " +  '"' + vcf + '"') else ""}
  >>>
  parameter_meta {
    contamination_fraction: "fraction of allowable normal support per tumor support read"
    output_vcf: "VCF output file (optional)"
    proximity: "distance to scan around breakpoint (optional, default=500)"
    ref: "the Reference BAM (required)"
    ref_slice: "the sliced Reference BAM to output (optional)"
    tumor: "the Tumor BAM (required)"
    tumor_slice: "the sliced Tumor BAM to output (optional)"
    vcf: "Manta VCF file to batch inspect (required)"
    arg: ""
  }
}