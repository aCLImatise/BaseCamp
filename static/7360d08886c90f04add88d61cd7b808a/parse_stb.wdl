version 1.0

task ParseStb.py {
  input {
    String? stb
    Boolean? fasta_file_extract
    String? output_base_name
    Boolean? reverse
    String the
    String program
    String has
    String two
    String uses
    String related
    String var_10
    String scaffold
    String var_12
    String bin
  }
  command <<<
    parse_stb.py \
      ~{the} \
      ~{program} \
      ~{has} \
      ~{two} \
      ~{uses} \
      ~{related} \
      ~{var_10} \
      ~{scaffold} \
      ~{var_12} \
      ~{bin} \
      ~{if defined(stb) then ("--stb " +  '"' + stb + '"') else ""} \
      ~{true="-f" false="" fasta_file_extract} \
      ~{if defined(output_base_name) then ("--output " +  '"' + output_base_name + '"') else ""} \
      ~{true="--reverse" false="" reverse}
  >>>
  parameter_meta {
    stb: "scaffold to bin file (default: None)"
    fasta_file_extract: "[FASTA [FASTA ...]], --fasta [FASTA [FASTA ...]] fasta file to extract scaffolds from. Will treat as compressed if ends in .gz (default: None)"
    output_base_name: "output base name (default: )"
    reverse: "generate a stb from a list of genomes (default: False)"
    the: ""
    program: ""
    has: ""
    two: ""
    uses: ""
    related: ""
    var_10: ""
    scaffold: ""
    var_12: ""
    bin: ""
  }
}