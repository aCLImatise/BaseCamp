version 1.0

task PancakeSequence {
  input {
    File? pan_file
    String? chrom
    String? genome
    File? file_output_written
    Int? linewidth
    Int? start
    Int? stop
  }
  command <<<
    pancake sequence \
      ~{if defined(pan_file) then ("--panfile " +  '"' + pan_file + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(file_output_written) then ("--output " +  '"' + file_output_written + '"') else ""} \
      ~{if defined(linewidth) then ("--linewidth " +  '"' + linewidth + '"') else ""} \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""} \
      ~{if defined(stop) then ("-stop " +  '"' + stop + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_file: "Name of PanCake Data Object File (required)"
    chrom: "Chromosome from which sequence originates"
    genome: "(multiple) .fasta output of GENOME (if set, start and\\nstop will be ignored)"
    file_output_written: "file to which .fasta output will be written (DEFAULT =\\nSTDOUT)"
    linewidth: "line witdth in .fastafile (DEFAULT=100)"
    start: "(1-based) start position on CHROMOSME (DEFAULT = 1)"
    stop: "(1-based) stop position on CHROMOSME (DEFAULT = length\\nof CHROMOSME)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_file_output_written = "${in_file_output_written}"
  }
}