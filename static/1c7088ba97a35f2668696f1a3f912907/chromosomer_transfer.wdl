version 1.0

task ChromosomerTransfer {
  input {
    String? format
  }
  command <<<
    chromosomer transfer \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    format: "the format of a file of annotated features (bed, gff3\\nor vcf) (default: bed)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}