version 1.0

task PancakeSequence {
  input {
    String? pan_file
    String? chrom
    String? genome
    String? file_fasta_output
    Int? linewidth
    Int? start
    Int? stop
  }
  command <<<
    pancake sequence \
      ~{if defined(pan_file) then ("--panfile " +  '"' + pan_file + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(file_fasta_output) then ("--output " +  '"' + file_fasta_output + '"') else ""} \
      ~{if defined(linewidth) then ("--linewidth " +  '"' + linewidth + '"') else ""} \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("-stop " +  '"' + stop + '"') else ""}
  >>>
  parameter_meta {
    pan_file: "Name of PanCake Data Object File (required)"
    chrom: "Chromosome from which sequence originates"
    genome: "(multiple) .fasta output of GENOME (if set, start and stop will be ignored)"
    file_fasta_output: "file to which .fasta output will be written (DEFAULT = STDOUT)"
    linewidth: "line witdth in .fastafile (DEFAULT=100)"
    start: "(1-based) start position on CHROMOSME (DEFAULT = 1)"
    stop: "(1-based) stop position on CHROMOSME (DEFAULT = length of CHROMOSME)"
  }
}