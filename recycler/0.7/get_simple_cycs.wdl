version 1.0

task GetSimpleCycs.py {
  input {
    String? input_spades_fastg
    Int? min_length
  }
  command <<<
    get_simple_cycs.py \
      ~{if defined(input_spades_fastg) then ("--input " +  '"' + input_spades_fastg + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""}
  >>>
  parameter_meta {
    input_spades_fastg: "Input (SPAdes 3.50+) FASTG to process"
    min_length: "Minimum cycle length to keep (shorter cycles put in new graph file; default = 1000)"
  }
}