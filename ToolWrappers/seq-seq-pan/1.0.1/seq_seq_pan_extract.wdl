version 1.0

task SeqseqpanExtract {
  input {
    Boolean? quiet
    File? output_path
    File? name
    File? x_mfa
    Int? genome_desc
    String? extract_region
    String seq_seq_pando_tpy
    String extract
  }
  command <<<
    seq_seq_pan extract \
      ~{seq_seq_pando_tpy} \
      ~{extract} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(output_path) then ("--output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(x_mfa) then ("--xmfa " +  '"' + x_mfa + '"') else ""} \
      ~{if defined(genome_desc) then ("--genome_desc " +  '"' + genome_desc + '"') else ""} \
      ~{if defined(extract_region) then ("--extractregion " +  '"' + extract_region + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Suppress warnings."
    output_path: "path to output directory"
    name: "File prefix and sequence header for output FASTA /\\nXFMA file"
    x_mfa: "XMFA input file"
    genome_desc: "File containing genome description (name/chromosomes)\\nfor .MAF file creation and 'split' task. Format:\\n'genome id<TAB>name<TAB>length' Length information is\\nonly necessary for FASTA files containing more than\\none chromosome. Multiple chromosomes of a genome must\\nbe listed in the same order as in original FASTA file."
    extract_region: "Region to extract in the form genome_nr:start-end (one\\nbased and inclusive) or only genome_nr for full\\nsequence.\\n"
    seq_seq_pando_tpy: ""
    extract: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
    File out_name = "${in_name}"
  }
}