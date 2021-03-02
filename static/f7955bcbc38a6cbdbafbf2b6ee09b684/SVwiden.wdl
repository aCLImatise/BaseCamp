version 1.0

task SVwiden {
  input {
    File? ref
    File? prefix
    String? refname
    Boolean? noheader
    File? variants
    String for
    String complete
    String documentation
  }
  command <<<
    SVwiden \
      ~{for} \
      ~{complete} \
      ~{documentation} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(refname) then ("--refname " +  '"' + refname + '"') else ""} \
      ~{if (noheader) then "--noheader" else ""} \
      ~{if defined(variants) then ("--variants " +  '"' + variants + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "Specify the path to the multi-fasta file that serves as a reference\\nfor the structural variants in the VCF file."
    prefix: "Specify a prefix for the path to which to write a new VCF file\\ncontaining the structural variants from the input VCF file, but now\\nwith tags specifying widened coordinates. (Default \\\"./widened\\\")."
    refname: "Specify a string to be written as the reference name in the\\n##reference line of the VCF header."
    noheader: "Flag option to suppress printout of the VCF header."
    variants: ""
    for: ""
    complete: ""
    documentation: ""
  }
  output {
    File out_stdout = stdout()
  }
}