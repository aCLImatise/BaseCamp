version 1.0

task BamtoolsSplit {
  input {
    String? in
    String? ref_prefix
    String? tag_prefix
    File? stub
    String? taglist_delim
    Boolean? mapped
    Boolean? paired
    Boolean? reference
    String? tag
  }
  command <<<
    bamtools split \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(ref_prefix) then ("-refPrefix " +  '"' + ref_prefix + '"') else ""} \
      ~{if defined(tag_prefix) then ("-tagPrefix " +  '"' + tag_prefix + '"') else ""} \
      ~{if defined(stub) then ("-stub " +  '"' + stub + '"') else ""} \
      ~{if defined(taglist_delim) then ("-tagListDelim " +  '"' + taglist_delim + '"') else ""} \
      ~{true="-mapped" false="" mapped} \
      ~{true="-paired" false="" paired} \
      ~{true="-reference" false="" reference} \
      ~{if defined(tag) then ("-tag " +  '"' + tag + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    ref_prefix: "custom prefix for splitting by references. Currently files end with REF_<refName>.bam. This option allows you to replace \"REF_\" with a prefix of your choosing."
    tag_prefix: "custom prefix for splitting by tags. Current files end with TAG_<tagname>_<tagvalue>.bam. This option allows you to replace \"TAG_\" with a prefix of your choosing."
    stub: "prefix stub for output BAM files (default behavior is to use input filename, without .bam extension, as stub). If input is stdin and no stub provided, a timestamp is generated as the stub."
    taglist_delim: "delimiter used to separate values in the filenames generated from splitting on list-type tags [--]"
    mapped: "split mapped/unmapped alignments"
    paired: "split single-end/paired-end alignments"
    reference: "split alignments by reference"
    tag: "splits alignments based on all values of TAG encountered (i.e. -tag RG creates a BAM file for each read group in original BAM file)"
  }
}