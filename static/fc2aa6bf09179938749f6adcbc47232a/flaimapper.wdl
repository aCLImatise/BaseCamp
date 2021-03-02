version 1.0

task Flaimapper {
  input {
    File? parameters
    File? output_filename_stdout
    File? format
    File? fast_a
    Int? offset_five_p
    Int? offset_three_p
    Boolean? v
  }
  command <<<
    flaimapper \
      ~{if defined(parameters) then ("--parameters " +  '"' + parameters + '"') else ""} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(offset_five_p) then ("--offset5p " +  '"' + offset_five_p + '"') else ""} \
      ~{if defined(offset_three_p) then ("--offset3p " +  '"' + offset_three_p + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parameters: "File containing the filtering parameters, using\\ndefault if none is provided"
    output_filename_stdout: "output filename; '-' for stdout"
    format: "file format of the output: [1: table; per fragment],\\n[2: GTF (default)]"
    fast_a: "Single reference FASTA file (+faid index) containing\\nall genomic reference sequences"
    offset_five_p: "Offset in bp added to the exon-type annotations in the\\nGTF file. This offset is used in tools estimating the\\nexpression levels (default=4)"
    offset_three_p: "Offset in bp added to the exon-type annotations in the\\nGTF file. This offset is used in tools estimating the\\nexpression levels (default=4)"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_stdout = "${in_output_filename_stdout}"
    File out_format = "${in_format}"
  }
}