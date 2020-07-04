version 1.0

task MafCount.py {
  input {
    Boolean? cols
    Boolean? bases
    String? skip
    Boolean? each
    String? ref
  }
  command <<<
    maf_count.py \
      ~{true="--cols" false="" cols} \
      ~{true="--bases" false="" bases} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{true="--each" false="" each} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    cols: "count alignment columns rather than number of alignments"
    bases: "count bases in first species rather than number of alignments"
    skip: "when counting bases, skip this base"
    each: "print a count for each alignment rather than whole file"
    ref: "reference sequence (first by default, 0..n)"
  }
}