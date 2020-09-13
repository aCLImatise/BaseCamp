version 1.0

task SplashUtilconversionrate {
  input {
    File? reference
    String? region
    Boolean? rev
  }
  command <<<
    splash util_conversionrate \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (rev) then "-rev" else ""}
  >>>
  parameter_meta {
    reference: "Reference fasta file"
    region: ""
    rev: ""
  }
  output {
    File out_stdout = stdout()
  }
}