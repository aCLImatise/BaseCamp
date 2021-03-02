version 1.0

task BamtoolsSplit {
  input {
    File? in
    String? ref_prefix
    String? tag_prefix
    File? stub
    String? taglist_delim
    Boolean? mapped
    File? tag
  }
  command <<<
    bamtools split \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(ref_prefix) then ("-refPrefix " +  '"' + ref_prefix + '"') else ""} \
      ~{if defined(tag_prefix) then ("-tagPrefix " +  '"' + tag_prefix + '"') else ""} \
      ~{if defined(stub) then ("-stub " +  '"' + stub + '"') else ""} \
      ~{if defined(taglist_delim) then ("-tagListDelim " +  '"' + taglist_delim + '"') else ""} \
      ~{if (mapped) then "-mapped" else ""} \
      ~{if defined(tag) then ("-tag " +  '"' + tag + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "the input BAM file [stdin]"
    ref_prefix: "custom prefix for splitting by\\nreferences. Currently files end with\\nREF_<refName>.bam. This option allows you\\nto replace \\\"REF_\\\" with a prefix of your\\nchoosing."
    tag_prefix: "custom prefix for splitting by\\ntags. Current files end with\\nTAG_<tagname>_<tagvalue>.bam. This option\\nallows you to replace \\\"TAG_\\\" with a prefix\\nof your choosing."
    stub: "prefix stub for output BAM\\nfiles (default behavior is to use input\\nfilename, without .bam extension, as\\nstub). If input is stdin and no stub\\nprovided, a timestamp is generated as the\\nstub."
    taglist_delim: "delimiter used to separate\\nvalues in the filenames generated from\\nsplitting on list-type tags [--]"
    mapped: "split mapped/unmapped"
    tag: "splits alignments based on all\\nvalues of TAG encountered (i.e. -tag RG\\ncreates a BAM file for each read group in\\noriginal BAM file)"
  }
  output {
    File out_stdout = stdout()
  }
}