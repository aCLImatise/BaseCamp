version 1.0

task GetGffsFromList.py {
  input {
    Boolean partialPartial
    String? gffGffFilename
    String? listListFilename
  }
  command <<<
    get_gffs_from_list.py \
      ~{gffGffFilename} \
      ~{true="--partial" false="" partialPartial} \
      ~{listListFilename}
  >>>
}