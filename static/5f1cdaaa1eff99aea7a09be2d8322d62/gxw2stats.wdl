version 1.0

task Gxw2stats.pl {
  input {
    String? ns
    Boolean? sfd
    Boolean? smc
    Boolean? amc
    String? camc
    Boolean? cp
    Boolean? cmc
    Boolean? xml
    String? run
    String? s_xml
  }
  command <<<
    gxw2stats.pl \
      ~{if defined(ns) then ("-ns " +  '"' + ns + '"') else ""} \
      ~{true="-sfd" false="" sfd} \
      ~{true="-smc" false="" smc} \
      ~{true="-amc" false="" amc} \
      ~{if defined(camc) then ("-camc " +  '"' + camc + '"') else ""} \
      ~{true="-cp" false="" cp} \
      ~{true="-cmc" false="" cmc} \
      ~{true="-xml" false="" xml} \
      ~{if defined(run) then ("-run " +  '"' + run + '"') else ""} \
      ~{if defined(s_xml) then ("-sxml " +  '"' + s_xml + '"') else ""}
  >>>
  parameter_meta {
    ns: ":        Num samples"
    sfd: ":             Description sequence feature"
    smc: ":             Single matrices counts"
    amc: ":             All matrices counts"
    camc: ":      Configuration adjacent matrices counts (str has the form: <min;max;inc;XXX;NoFunction/Gaussian;mean;std>) [XXX] = CombinedAdjacentMatricesCount/SeparateAdjacentMatricesCount/SeparateProximalMatricesCount"
    cp: ":              Configuration probabilities"
    cmc: ":             Configuration matrices coverage"
    xml: ":             print only the xml file"
    run: ":       Print the stdout and stderr of the program into the file <str>"
    s_xml: ":      Save the xml file into <str>"
  }
}