version 1.0

task Winextract {
  input {
    File? genome
    File? in_bed
    File? output_file_valid
    Int? window
    Boolean? uow
    Boolean? asn
  }
  command <<<
    winextract \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(in_bed) then ("--in-bed " +  '"' + in_bed + '"') else ""} \
      ~{if defined(output_file_valid) then ("--output " +  '"' + output_file_valid + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (uow) then "--uow" else ""} \
      ~{if (asn) then "--asn" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome: "Genome reference file. Valid filetypes are: .fa and .fasta."
    in_bed: "Input cand-regions. Valid filetype is: .bed."
    output_file_valid: "Output file. Valid filetypes are: .fasta and .fa."
    window: "Window size to analyse. In range [5..2000]."
    uow: "Use given window."
    asn: "Add score to output sequence name."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_valid = "${in_output_file_valid}"
  }
}