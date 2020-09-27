version 1.0

task Snpsites {
  input {
    Boolean? output_internal_pseudo
    File? output_multi_default
    File? output_vcf_file
    File? output_phylip_file
    File? specify_output_filename
    Boolean? only_output_columns
    Boolean? only_output_count
    Boolean? output_monomorphic_sites
    Boolean? print_version_exit
    Boolean? rmv_pc_bhv
    File file
  }
  command <<<
    snp_sites \
      ~{file} \
      ~{if (output_internal_pseudo) then "-r" else ""} \
      ~{if (output_multi_default) then "-m" else ""} \
      ~{if (output_vcf_file) then "-v" else ""} \
      ~{if (output_phylip_file) then "-p" else ""} \
      ~{if defined(specify_output_filename) then ("-o " +  '"' + specify_output_filename + '"') else ""} \
      ~{if (only_output_columns) then "-c" else ""} \
      ~{if (only_output_count) then "-C" else ""} \
      ~{if (output_monomorphic_sites) then "-b" else ""} \
      ~{if (print_version_exit) then "-V" else ""} \
      ~{if (rmv_pc_bhv) then "-rmvpcbhV" else ""}
  >>>
  parameter_meta {
    output_internal_pseudo: "output internal pseudo reference sequence"
    output_multi_default: "output a multi fasta alignment file (default)"
    output_vcf_file: "output a VCF file"
    output_phylip_file: "output a phylip file"
    specify_output_filename: "specify an output filename [STDOUT]"
    only_output_columns: "only output columns containing exclusively ACGT"
    only_output_count: "only output count of constant sites (suitable for IQ-TREE -fconst) and nothing else"
    output_monomorphic_sites: "output monomorphic sites, used for BEAST"
    print_version_exit: "print version and exit"
    rmv_pc_bhv: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_multi_default = "${in_output_multi_default}"
    File out_output_vcf_file = "${in_output_vcf_file}"
    File out_output_phylip_file = "${in_output_phylip_file}"
    File out_specify_output_filename = "${in_specify_output_filename}"
  }
}