version 1.0

task Maskfeat {
  input {
    Boolean? type
    Boolean? to_lower
  }
  command <<<
    maskfeat \
      ~{if (type) then "-type" else ""} \
      ~{if (to_lower) then "-tolower" else ""}
  >>>
  parameter_meta {
    type: "string     [repeat*] By default any feature in the\\nfeature table with a type starting 'repeat'\\nis masked. You can set this to be any\\nfeature type you wish to mask.\\nSee http://www.ebi.ac.uk/embl/WebFeat/ for a\\nlist of the EMBL feature types and see\\nAppendix A of the Swissprot user manual in\\nhttp://www.expasy.org/sprot/userman.html for\\na list of the Swissprot feature types.\\nThe type may be wildcarded by using '*'.\\nIf you wish to mask more than one type,\\nseparate their names with spaces or commas,\\neg:\\n*UTR repeat* (Any string)"
    to_lower: "toggle     [N] The region can be 'masked' by converting\\nthe sequence characters to lower-case, some\\nnon-EMBOSS programs e.g. fasta can\\ninterpret this as a masked region. The\\nsequence is unchanged apart from the case\\nchange. You might like to ensure that the\\nwhole sequence is in upper-case before\\nmasking the specified regions to lower-case\\nby using the '-supper' flag."
  }
  output {
    File out_stdout = stdout()
  }
}