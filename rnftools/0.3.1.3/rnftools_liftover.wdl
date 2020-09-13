version 1.0

task RnftoolsLiftover {
  input {
    File? chain
    Int? genome_id
    File? fa_idx
    Boolean? invert
    String? input_format
    String? output_format
    String input_file_transformed
    String output_file_transformed
  }
  command <<<
    rnftools liftover \
      ~{input_file_transformed} \
      ~{output_file_transformed} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(genome_id) then ("--genome-id " +  '"' + genome_id + '"') else ""} \
      ~{if defined(fa_idx) then ("--faidx " +  '"' + fa_idx + '"') else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""}
  >>>
  parameter_meta {
    chain: "Chain liftover file for coordinates transformation.\\n[no transformation]"
    genome_id: "ID of genome to be transformed."
    fa_idx: "Fasta index of the reference sequence. [extract from\\nchain file]"
    invert: "Invert chain file (transformation in the other\\ndirection)."
    input_format: "Input format (SAM/BAM/FASTQ). [autodetect]"
    output_format: "Output format (SAM/BAM/FASTQ). [autodetect]"
    input_file_transformed: "Input file to be transformed (- for standard input)."
    output_file_transformed: "Output file to be transformed (- for standard output)."
  }
  output {
    File out_stdout = stdout()
  }
}