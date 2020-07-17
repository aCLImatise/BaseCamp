version 1.0

task BioconvertSniffer {
  input {
    String? verbosity
    Array[String] set_input_file
    Boolean? quiet
  }
  command <<<
    bioconvert_sniffer \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(set_input_file) then ("--input " +  '"' + set_input_file + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbosity: "Set the outpout verbosity."
    set_input_file: "Set the input file."
    quiet: "simply return a two columns output with filename and found format."
  }
}