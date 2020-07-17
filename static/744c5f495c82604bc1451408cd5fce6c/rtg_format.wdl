version 1.0

task RtgFormat {
  input {
    Boolean? duster
    String? exclude
    String? select_read_group
    Int? trim_threshold
    Boolean? allow_duplicate_names
    Boolean? no_names
    Boolean? no_quality
    String? sam_rg
    String? option
  }
  command <<<
    rtg format \
      ~{option} \
      ~{true="--duster" false="" duster} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(select_read_group) then ("--select-read-group " +  '"' + select_read_group + '"') else ""} \
      ~{if defined(trim_threshold) then ("--trim-threshold " +  '"' + trim_threshold + '"') else ""} \
      ~{true="--allow-duplicate-names" false="" allow_duplicate_names} \
      ~{true="--no-names" false="" no_names} \
      ~{true="--no-quality" false="" no_quality} \
      ~{if defined(sam_rg) then ("--sam-rg " +  '"' + sam_rg + '"') else ""}
  >>>
  parameter_meta {
    duster: "treat lower case residues as unknowns"
    exclude: "exclude input sequences based on their name. If the input sequence contains the specified string then that sequence is excluded from the SDF. May be specified 0 or more times"
    select_read_group: "when formatting from SAM/BAM input, only include reads with this read group ID"
    trim_threshold: "trim read ends to maximise base quality above the given threshold"
    allow_duplicate_names: "disable checking for duplicate sequence names"
    no_names: "do not include name data in the SDF output"
    no_quality: "do not include quality data in the SDF output"
    sam_rg: "|FILE       file containing a single valid read group SAM header line or a string in the form \"@RG\tID:READGROUP1\tSM:BACT_SAMPLE\tPL:ILLUMINA\""
    option: ""
  }
}