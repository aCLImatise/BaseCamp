version 1.0

task Flaimapper {
  input {
    String? parameters
    String? output_filename_stdout
    String? format
    String? fast_a
    String? offset_five_p
    String? offset_three_p
    Boolean? v
    String alignment_file
  }
  command <<<
    flaimapper \
      ~{alignment_file} \
      ~{if defined(parameters) then ("--parameters " +  '"' + parameters + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(offset_five_p) then ("--offset5p " +  '"' + offset_five_p + '"') else ""} \
      ~{if defined(offset_three_p) then ("--offset3p " +  '"' + offset_three_p + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    parameters: "File containing the filtering parameters, using default if none is provided"
    output_filename_stdout: "output filename; '-' for stdout"
    format: "file format of the output: [1: table; per fragment], [2: GTF (default)]"
    fast_a: "Single reference FASTA file (+faid index) containing all genomic reference sequences"
    offset_five_p: "Offset in bp added to the exon-type annotations in the GTF file. This offset is used in tools estimating the expression levels (default=4)"
    offset_three_p: "Offset in bp added to the exon-type annotations in the GTF file. This offset is used in tools estimating the expression levels (default=4)"
    v: ""
    alignment_file: "indexed SAM or BAM file"
  }
}