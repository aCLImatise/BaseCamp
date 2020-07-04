version 1.0

task LofreqVcfset {
  input {
    Boolean? _vcf_file
    Boolean? _file_file
    Boolean? _vcfout_vcf
    Boolean? _action_set
    Boolean? _addinfo_str
  }
  command <<<
    lofreq vcfset \
      ~{true="-1" false="" _vcf_file} \
      ~{true="-2" false="" _file_file} \
      ~{true="-o" false="" _vcfout_vcf} \
      ~{true="-a" false="" _action_set} \
      ~{true="-I" false="" _addinfo_str}
  >>>
  parameter_meta {
    _vcf_file: "| --vcf1 FILE      1st VCF input file (bgzip supported)"
    _file_file: "| --vcf2 FILE      2nd VCF input file (mandatory - except for concat - and needs to be tabix indexed)"
    _vcfout_vcf: "| --vcfout         VCF output file (default: - for stdout; gzip supported)."
    _action_set: "| --action         Set operation to perform: intersect, complement or concat. - intersect = vcf1 AND vcf2. - complement = vcf1 \ vcf2. - concat = vcf1 + vcf2 ... vcfn (output as in file order, i.e. output not necessarily sorted!)"
    _addinfo_str: "| --add-info STR   Add info field, e.g. 'SOMATIC' --count-only     Don't print bases, just numbers --only-pos       Disable allele-awareness by using position only (ignoring bases) as key for storing and comparison --only-passed    Ignore variants marked as filtered --only-snvs      Ignore anything but SNVs in both input files --only-indels    Ignore anything but indels in both input files --verbose        Be verbose --debug          Enable debugging"
  }
}