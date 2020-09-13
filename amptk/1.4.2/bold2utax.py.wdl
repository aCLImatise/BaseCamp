version 1.0

task Bold2utaxpy {
  input {
    String? bold_data_dump
    String? out
    String? cluster
    Boolean? drop_suppressed
    Boolean? require_genbank
  }
  command <<<
    bold2utax_py \
      ~{if defined(bold_data_dump) then ("--input " +  '"' + bold_data_dump + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if (drop_suppressed) then "--drop_suppressed" else ""} \
      ~{if (require_genbank) then "--require_genbank" else ""}
  >>>
  parameter_meta {
    bold_data_dump: "Bold data dump TSV format (default: None)"
    out: "Basename for UTAX formated FASTA output (default:\\nNone)"
    cluster: "Post processsing cluster (default: None)"
    drop_suppressed: "Drop IDs if SUPPRESSED in header (default: False)"
    require_genbank: "Require output to have GenBank Accessions (default:\\nFalse)"
  }
  output {
    File out_stdout = stdout()
  }
}