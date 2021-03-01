version 1.0

task LofreqVcfset {
  input {
    File? vcf_one
    File? vcf_two
    File? vcf_out
    File? action
    String? add_info
    Boolean? count_only
    Boolean? only_pos
    Boolean? only_passed
    Boolean? only_sn_vs
    Boolean? only_indels
    Boolean? verbose
    Boolean? debug
  }
  command <<<
    lofreq vcfset \
      ~{if defined(vcf_one) then ("--vcf1 " +  '"' + vcf_one + '"') else ""} \
      ~{if defined(vcf_two) then ("--vcf2 " +  '"' + vcf_two + '"') else ""} \
      ~{if (vcf_out) then "--vcfout" else ""} \
      ~{if (action) then "--action" else ""} \
      ~{if defined(add_info) then ("--add-info " +  '"' + add_info + '"') else ""} \
      ~{if (count_only) then "--count-only" else ""} \
      ~{if (only_pos) then "--only-pos" else ""} \
      ~{if (only_passed) then "--only-passed" else ""} \
      ~{if (only_sn_vs) then "--only-snvs" else ""} \
      ~{if (only_indels) then "--only-indels" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_one: "1st VCF input file (bgzip supported)"
    vcf_two: "2nd VCF input file (mandatory - except for concat - and needs to be tabix indexed)"
    vcf_out: "VCF output file (default: - for stdout; gzip supported)."
    action: "Set operation to perform: intersect, complement or concat.\\n- intersect = vcf1 AND vcf2.\\n- complement = vcf1 \\ vcf2.\\n- concat = vcf1 + vcf2 ... vcfn (output as in file order, i.e. output not necessarily sorted!)"
    add_info: "Add info field, e.g. 'SOMATIC'"
    count_only: "Don't print bases, just numbers"
    only_pos: "Disable allele-awareness by using position only (ignoring bases) as key for storing and comparison"
    only_passed: "Ignore variants marked as filtered"
    only_sn_vs: "Ignore anything but SNVs in both input files"
    only_indels: "Ignore anything but indels in both input files"
    verbose: "Be verbose"
    debug: "Enable debugging"
  }
  output {
    File out_stdout = stdout()
    File out_vcf_out = "${in_vcf_out}"
    File out_action = "${in_action}"
  }
}