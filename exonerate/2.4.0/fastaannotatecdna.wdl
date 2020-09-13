version 1.0

task Fastaannotatecdna {
  input {
    Boolean? help
    File? cdna
    File? protein
    Boolean? genetic_code
  }
  command <<<
    fastaannotatecdna \
      ~{if (help) then "--help" else ""} \
      ~{if defined(cdna) then ("--cdna " +  '"' + cdna + '"') else ""} \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if (genetic_code) then "--geneticcode" else ""}
  >>>
  parameter_meta {
    help: ""
    cdna: ""
    protein: ""
    genetic_code: ""
  }
  output {
    File out_stdout = stdout()
  }
}