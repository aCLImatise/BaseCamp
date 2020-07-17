version 1.0

task AgatSqMask.pl {
  input {
    String? gff
    String? fast_a
    Boolean? sm
    Boolean? hm
    String? output_gff_file
  }
  command <<<
    agat_sq_mask.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="-sm" false="" sm} \
      ~{true="-hm" false="" hm} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Input fasta file that will be masked"
    sm: "SoftMask option =>Sequences masked will be in lowercase"
    hm: "HardMask option => Sequences masked will be replaced by a character. By default the character used is 'n'. But you are allowed to speceify any character of your choice. To use 'z' instead of 'n' type: -hm z"
    output_gff_file: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}