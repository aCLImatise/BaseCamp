version 1.0

task VcfAnnotate {
  input {
    File? annotations
    String? columns
    File? description
    Boolean? fill_ac_an
    Boolean? fill_h_we
    Boolean? fill_icf
    Boolean? fill_type
    File? filter
    Boolean? hard_filter
    Boolean? normalize_alleles
    String? remove
    String cat
    String in_dot_vcf
  }
  command <<<
    vcf-annotate \
      ~{cat} \
      ~{in_dot_vcf} \
      ~{if defined(annotations) then ("--annotations " +  '"' + annotations + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{true="--fill-AC-AN" false="" fill_ac_an} \
      ~{true="--fill-HWE" false="" fill_h_we} \
      ~{true="--fill-ICF" false="" fill_icf} \
      ~{true="--fill-type" false="" fill_type} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{true="--hard-filter" false="" hard_filter} \
      ~{true="--normalize-alleles" false="" normalize_alleles} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""}
  >>>
  parameter_meta {
    annotations: "The tabix indexed file with the annotations: CHR\tFROM[\tTO][\tVALUE]+."
    columns: "The list of columns in the annotation file, e.g. CHROM,FROM,TO,-,QUAL,INFO/STR,INFO/GN. The dash in this example indicates that the third column should be ignored. If TO is not present, it is assumed that TO equals to FROM. When REF and ALT columns are present, only matching lines are annotated."
    description: "Header annotation, e.g. key=INFO,ID=HM2,Number=0,Type=Flag,Description='HapMap2 membership'. The descriptions can be read from a file, one annotation per line."
    fill_ac_an: "(Re)Calculate AC and AN tags"
    fill_h_we: "(Re)Calculate HWE, AC and AN tags"
    fill_icf: "(Re)Calculate Inbreeding Coefficient F, HWE, AC and AN"
    fill_type: "Annotate INFO/TYPE with snp,del,ins,mnp,complex"
    filter: "Apply filters, list is in the format flt1=value/flt2/flt3=value/etc. If argument to -f is a file, user-defined filters be applied. See User Defined Filters below."
    hard_filter: "Remove lines with FILTER anything else than PASS or \".\""
    normalize_alleles: "Make REF and ALT alleles more compact if possible (e.g. TA,TAA -> T,TA)."
    remove: "Comma-separated list of tags to be removed (e.g. ID,INFO/DP,FORMAT/DP,FILTER)."
    cat: ""
    in_dot_vcf: ""
  }
}