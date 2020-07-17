version 1.0

task StructureHarvester.py {
  input {
    String? dir
    String? out
    Boolean? evan_no
    Boolean? clump_p
    String usage
  }
  command <<<
    structureHarvester.py \
      ~{usage} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--evanno" false="" evan_no} \
      ~{true="--clumpp" false="" clump_p}
  >>>
  parameter_meta {
    dir: "The structure Results/ directory."
    out: "The out directory. If it does not exist, it will be created. Output written to summary.txt"
    evan_no: "If possible, performs the Evanno 2005 method. Written to evanno.txt. default=False"
    clump_p: "Generates one K*.indfile for each value of K run, for use with CLUMPP. default=False"
    usage: ""
  }
}