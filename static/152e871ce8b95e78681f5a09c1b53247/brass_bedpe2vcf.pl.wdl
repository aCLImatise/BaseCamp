version 1.0

task BrassBedpe2vcfpl {
  input {
    Boolean? species
    Boolean? file
    Boolean? outfile
    File? ref
    File? assembly
    File? platform
    File? protocol
    File? tumour
    File? acc_tumour
    File? acc_source_tumour
    File? study_tumour
    File? normal
    File? acc_normal
    File? acc_source_normal
    File? study_normal
  }
  command <<<
    brass_bedpe2vcf_pl \
      ~{if (species) then "-species" else ""} \
      ~{if (file) then "-file" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (ref) then "-ref" else ""} \
      ~{if (assembly) then "-assembly" else ""} \
      ~{if (platform) then "-platform" else ""} \
      ~{if (protocol) then "-protocol" else ""} \
      ~{if (tumour) then "-tumour" else ""} \
      ~{if (acc_tumour) then "-acc_tumour" else ""} \
      ~{if (acc_source_tumour) then "-acc_source_tumour" else ""} \
      ~{if (study_tumour) then "-study_tumour" else ""} \
      ~{if (normal) then "-normal" else ""} \
      ~{if (acc_normal) then "-acc_normal" else ""} \
      ~{if (acc_source_normal) then "-acc_source_normal" else ""} \
      ~{if (study_normal) then "-study_normal" else ""}
  >>>
  parameter_meta {
    species: ": species (HUMAN, MOUSE, DOG etc)"
    file: ": input file - format type: bedpe)"
    outfile: ": what file to print output to. Default is input_file.bedpe"
    ref: ": fasta reference file (with associated fai file). For vcf out file generation."
    assembly: ": sequence assembly used (eg GRCh37). For vcf out file generation."
    platform: ": sequencing platform used (eg HiSeq). For vcf out file generation."
    protocol: ": sequencing experimental design (eg genomic, pulldown). For vcf out file generation."
    tumour: ": name of tumour sample. For vcf out file generation."
    acc_tumour: ": name of tumour sample accession id. For vcf out file generation."
    acc_source_tumour: ": source of tumour sample accession id. For vcf out file generation."
    study_tumour: ": study id associated with tumour sample. For vcf out file generation."
    normal: ": name of normal sample. For vcf out file generation."
    acc_normal: ": name of normal sample accession id. For vcf out file generation."
    acc_source_normal: ": source of normal sample accession id. For vcf out file generation."
    study_normal: ": study id associated with normal sample. For vcf out file generation."
  }
  output {
    File out_stdout = stdout()
    File out_ref = "${in_ref}"
    File out_assembly = "${in_assembly}"
    File out_platform = "${in_platform}"
    File out_protocol = "${in_protocol}"
    File out_tumour = "${in_tumour}"
    File out_acc_tumour = "${in_acc_tumour}"
    File out_acc_source_tumour = "${in_acc_source_tumour}"
    File out_study_tumour = "${in_study_tumour}"
    File out_normal = "${in_normal}"
    File out_acc_normal = "${in_acc_normal}"
    File out_acc_source_normal = "${in_acc_source_normal}"
    File out_study_normal = "${in_study_normal}"
  }
}