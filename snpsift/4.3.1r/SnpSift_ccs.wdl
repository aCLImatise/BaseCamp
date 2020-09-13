version 1.0

task SnpSiftCcs {
  input {
    Boolean? _be_quiet
    Boolean? _be_verbose
    String? jar
    File file_do_ttf_am
    File file_dot_bed
    File file_dot_vcf
  }
  command <<<
    SnpSift ccs \
      ~{file_do_ttf_am} \
      ~{file_dot_bed} \
      ~{file_dot_vcf} \
      ~{if (_be_quiet) then "-q" else ""} \
      ~{if (_be_verbose) then "-v" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    _be_quiet: ": Be quiet"
    _be_verbose: ": Be verbose"
    jar: ""
    file_do_ttf_am: ": File with genotypes and groups informations (groups are in familyId)"
    file_dot_bed: ": File with regions of interest (intervals in BED format)"
    file_dot_vcf: ": A VCF file (variants and genotype data)"
  }
  output {
    File out_stdout = stdout()
  }
}