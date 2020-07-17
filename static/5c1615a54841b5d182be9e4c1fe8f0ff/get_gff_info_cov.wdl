version 1.0

task GetGffInfoCov {
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
    get-gff-info cov \
      ~{gff_file} \
      ~{output_file} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--json-out" false="" json_out} \
      ~{true="--strand-specific" false="" strand_specific} \
      ~{true="--rename" false="" rename} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    reference: "Reference FASTA file for the GFF  [required]"
    json_out: "The output will be a JSON dictionary"
    strand_specific: "If the coverage must be calculated on each strand"
    rename: "Emulate BLAST output (use only the header part before the first space)"
    progress: "Shows Progress Bar"
    gff_file: ""
    output_file: ""
  }
}