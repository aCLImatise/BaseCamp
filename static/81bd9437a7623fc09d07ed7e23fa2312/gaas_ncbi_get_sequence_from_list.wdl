version 1.0

task GaasNcbiGetSequenceFromList.pl {
  input {
    Boolean? line
    Boolean? col
    String? outfile
    File? list
  }
  command <<<
    gaas_ncbi_get_sequence_from_list.pl \
      ~{true="--line" false="" line} \
      ~{true="--col" false="" col} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""}
  >>>
  parameter_meta {
    line: "Integer, number of line to avoid. Allow to avoid headers."
    col: "column containing the ID. By default the first column is considered."
    outfile: "The name of the output file. By default the output is the standard output"
    list: ""
  }
}