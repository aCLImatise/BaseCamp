version 1.0

task LofreqVcfset {
  input {
    Boolean? _vcf_file_st
    Boolean? _vcf_file_nd
    File? _vcfout_default
    File? _action_operation
    Boolean? _addinfo_str
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
      ~{if (_vcf_file_st) then "-1" else ""} \
      ~{if (_vcf_file_nd) then "-2" else ""} \
      ~{if (_vcfout_default) then "-o" else ""} \
      ~{if (_action_operation) then "-a" else ""} \
      ~{if (_addinfo_str) then "-I" else ""} \
      ~{if (count_only) then "--count-only" else ""} \
      ~{if (only_pos) then "--only-pos" else ""} \
      ~{if (only_passed) then "--only-passed" else ""} \
      ~{if (only_sn_vs) then "--only-snvs" else ""} \
      ~{if (only_indels) then "--only-indels" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    _vcf_file_st: "| --vcf1 FILE      1st VCF input file (bgzip supported)"
    _vcf_file_nd: "| --vcf2 FILE      2nd VCF input file (mandatory - except for concat - and needs to be tabix indexed)"
    _vcfout_default: "| --vcfout         VCF output file (default: - for stdout; gzip supported)."
    _action_operation: "| --action         Set operation to perform: intersect, complement or concat.\\n- intersect = vcf1 AND vcf2.\\n- complement = vcf1 \\ vcf2.\\n- concat = vcf1 + vcf2 ... vcfn (output as in file order, i.e. output not necessarily sorted!)"
    _addinfo_str: "| --add-info STR   Add info field, e.g. 'SOMATIC'"
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
    File out__vcfout_default = "${in__vcfout_default}"
    File out__action_operation = "${in__action_operation}"
  }
}