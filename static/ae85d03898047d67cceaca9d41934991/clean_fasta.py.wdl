version 1.0

task CleanFastapy {
  input {
    Boolean? verbose
    File? output_dir
    Boolean? gap_chars
    Boolean? space_chars
    Boolean? convert_uracil
    Boolean? cap_seqs
    File? fast_a_seqs
  }
  command <<<
    clean_fasta_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (gap_chars) then "--gap_chars" else ""} \
      ~{if (space_chars) then "--space_chars" else ""} \
      ~{if (convert_uracil) then "--convert_uracil" else ""} \
      ~{if (cap_seqs) then "--cap_seqs" else ""} \
      ~{if defined(fast_a_seqs) then ("--fasta_seqs " +  '"' + fast_a_seqs + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    output_dir: "Output directory for filtered fasta file(s). [default:\\n.]"
    gap_chars: "Filter gap characters \\\".\\\" and \\\"-\\\" [default: True]"
    space_chars: "Filter space characters. [default: True]"
    convert_uracil: "Convert Uracil \\\"U\\\" characters to \\\"T\\\". [default: True]"
    cap_seqs: "Capitalize filtered sequences [default: True]"
    fast_a_seqs: "Target fasta file(s) to filter. Separate multiple\\nfiles with a colon. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}