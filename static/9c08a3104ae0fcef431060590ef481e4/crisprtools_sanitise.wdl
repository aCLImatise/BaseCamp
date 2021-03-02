version 1.0

task CrisprtoolsSanitise {
  input {
    File? output_file_name
    Boolean? sanitise_features_equivelent
    Boolean? sanitise_the_spacers
    Boolean? sanitise_direct_repeats
    Boolean? sanitise_flanking_sequences
    Boolean? sanitise_the_contigs
  }
  command <<<
    crisprtools sanitise \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if (sanitise_features_equivelent) then "-a" else ""} \
      ~{if (sanitise_the_spacers) then "-s" else ""} \
      ~{if (sanitise_direct_repeats) then "-d" else ""} \
      ~{if (sanitise_flanking_sequences) then "-f" else ""} \
      ~{if (sanitise_the_contigs) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "Output file name, creates a sanitised copy of the input file  [default: sanitise input file inplace]"
    sanitise_features_equivelent: "Sanitise all features. Equivelent to -sdfc"
    sanitise_the_spacers: "Sanitise the spacers"
    sanitise_direct_repeats: "Sanitise the direct repeats"
    sanitise_flanking_sequences: "Sanitise the flanking sequences"
    sanitise_the_contigs: "Sanitise the contigs"
  }
  output {
    File out_stdout = stdout()
  }
}