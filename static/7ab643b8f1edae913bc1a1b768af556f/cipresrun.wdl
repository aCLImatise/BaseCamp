version 1.0

task Cipresrun {
  input {
    String ci_pres_run
  }
  command <<<
    cipresrun \
      ~{ci_pres_run}
  >>>
  parameter_meta {
    ci_pres_run: "-t <tool> \ -p <paramname=paramvalue> [-p <paramname=paramvalue>] \      -i <infile> \ -y <config.yml> \ -o <out.name=/out/path> [-o <out.name=/out/path>] \ -w <workdirectory> \ [-v] [-h] [--manpage]"
  }
}