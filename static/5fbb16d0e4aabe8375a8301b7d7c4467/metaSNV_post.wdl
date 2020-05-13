version 1.0

task MetaSNVPost.py {
  input {
    Float bB
    Float dD
    Int mM
    Float cC
    Float pP
    Boolean divDiv
    String? projProj
  }
  command <<<
    metaSNV_post.py \
      ~{projProj} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-div" false="" divDiv}
  >>>
}