version 1.0

task ParseStbpy {
  input {
    File? stb
    Boolean? fasta_file_extract
    String? output_base_name
    Boolean? reverse
    String the
    String program
    String has
    String two
    String uses
    String related
    String to
    String scaffold
    String bin
  }
  command <<<
    parse_stb_py \
      ~{the} \
      ~{program} \
      ~{has} \
      ~{two} \
      ~{uses} \
      ~{related} \
      ~{to} \
      ~{scaffold} \
      ~{bin} \
      ~{if defined(stb) then ("--stb " +  '"' + stb + '"') else ""} \
      ~{if (fasta_file_extract) then "-f" else ""} \
      ~{if defined(output_base_name) then ("--output " +  '"' + output_base_name + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/drep:3.2.0--py_0"
  }
  parameter_meta {
    stb: "scaffold to bin file (default: None)"
    fasta_file_extract: "[FASTA [FASTA ...]], --fasta [FASTA [FASTA ...]]\\nfasta file to extract scaffolds from. Will treat as\\ncompressed if ends in .gz (default: None)"
    output_base_name: "output base name (default: )"
    reverse: "generate a stb from a list of genomes (default: False)"
    the: ""
    program: ""
    has: ""
    two: ""
    uses: ""
    related: ""
    to: ""
    scaffold: ""
    bin: ""
  }
  output {
    File out_stdout = stdout()
  }
}