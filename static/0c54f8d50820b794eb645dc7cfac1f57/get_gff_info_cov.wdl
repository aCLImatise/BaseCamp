version 1.0

task GetgffinfoCov {
  input {
    File? reference
    Boolean? json_out
    Boolean? strand_specific
    Boolean? rename
    Boolean? progress
    String? gff_file
    String? output_file
  }
  command <<<
    get_gff_info cov \
      ~{gff_file} \
      ~{output_file} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (json_out) then "--json-out" else ""} \
      ~{if (strand_specific) then "--strand-specific" else ""} \
      ~{if (rename) then "--rename" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    reference: "Reference FASTA file for the GFF  [required]"
    json_out: "The output will be a JSON dictionary"
    strand_specific: "If the coverage must be calculated on each strand"
    rename: "Emulate BLAST output (use only the header part\\nbefore the first space)"
    progress: "Shows Progress Bar"
    gff_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}