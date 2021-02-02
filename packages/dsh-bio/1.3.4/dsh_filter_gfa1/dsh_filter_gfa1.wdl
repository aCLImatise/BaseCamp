version 1.0

task Dshfiltergfa1 {
  input {
    Boolean? about
    Boolean? invalid_segment_references
    Boolean? length
    Boolean? fragment_count
    Boolean? km_er_count
    Boolean? mapping_quality
    Boolean? mismatch_count
    Boolean? read_count
    Boolean? script
    Boolean? input_gfa_one_file
    File? output_gfa_one_file
  }
  command <<<
    dsh_filter_gfa1 \
      ~{if (about) then "--about" else ""} \
      ~{if (invalid_segment_references) then "--invalid-segment-references" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (fragment_count) then "--fragment-count" else ""} \
      ~{if (km_er_count) then "--kmer-count" else ""} \
      ~{if (mapping_quality) then "--mapping-quality" else ""} \
      ~{if (mismatch_count) then "--mismatch-count" else ""} \
      ~{if (read_count) then "--read-count" else ""} \
      ~{if (script) then "--script" else ""} \
      ~{if (input_gfa_one_file) then "--input-gfa1-file" else ""} \
      ~{if (output_gfa_one_file) then "--output-gfa1-file" else ""}
  >>>
  parameter_meta {
    about: "display about message [optional]"
    invalid_segment_references: "filter containments, links, and paths that reference missing segments [optional]"
    length: "[class java.lang.Integer]  filter segments by length [optional]"
    fragment_count: "[class java.lang.Integer]  filter segments and links by fragment count [optional]"
    km_er_count: "[class java.lang.Integer]  filter segments and links by k-mer count [optional]"
    mapping_quality: "[class java.lang.Integer]  filter links by mapping quality [optional]"
    mismatch_count: "[class java.lang.Integer]  filter links by mismatch count [optional]"
    read_count: "[class java.lang.Integer]  filter segments and links by read count [optional]"
    script: "[class java.lang.String]  filter by script, eval against r [optional]"
    input_gfa_one_file: "[class java.io.File]  input GFA 1.0 file, default stdin [optional]"
    output_gfa_one_file: "[class java.io.File]  output GFA 1.0 file, default stdout [optional]"
  }
  output {
    File out_stdout = stdout()
    File out_output_gfa_one_file = "${in_output_gfa_one_file}"
  }
}