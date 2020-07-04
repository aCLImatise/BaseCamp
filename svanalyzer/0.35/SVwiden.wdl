version 1.0

task SVwiden {
  input {
    File? ref
    File? prefix
    String? refname
    Boolean? noheader
    File? variants
  }
  command <<<
    SVwiden \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(refname) then ("--refname " +  '"' + refname + '"') else ""} \
      ~{true="--noheader" false="" noheader} \
      ~{if defined(variants) then ("--variants " +  '"' + variants + '"') else ""}
  >>>
  parameter_meta {
    ref: "Specify the path to the multi-fasta file that serves as a reference for the structural variants in the VCF file."
    prefix: "Specify a prefix for the path to which to write a new VCF file containing the structural variants from the input VCF file, but now with tags specifying widened coordinates. (Default \"./widened\")."
    refname: "Specify a string to be written as the reference name in the ##reference line of the VCF header."
    noheader: "Flag option to suppress printout of the VCF header."
    variants: ""
  }
}