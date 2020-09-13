version 1.0

task StructureHarvesterpy {
  input {
    Directory? dir
    Directory? out
    Boolean? evan_no
    Boolean? clump_p
    String usage
  }
  command <<<
    structureHarvester_py \
      ~{usage} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (evan_no) then "--evanno" else ""} \
      ~{if (clump_p) then "--clumpp" else ""}
  >>>
  parameter_meta {
    dir: "The structure Results/ directory."
    out: "The out directory. If it does not exist, it will be\\ncreated. Output written to summary.txt"
    evan_no: "If possible, performs the Evanno 2005 method. Written to\\nevanno.txt. default=False"
    clump_p: "Generates one K*.indfile for each value of K run, for use\\nwith CLUMPP. default=False\\n"
    usage: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}