version 1.0

task Edena {
  input {
    Int? truncate
    Int? dead_ends
    Boolean? discard_non_usable
    Int? trim
    Boolean? shell
  }
  command <<<
    edena \
      ~{if defined(truncate) then ("-truncate " +  '"' + truncate + '"') else ""} \
      ~{if defined(dead_ends) then ("-deadEnds " +  '"' + dead_ends + '"') else ""} \
      ~{true="-discardNonUsable" false="" discard_non_usable} \
      ~{if defined(trim) then ("-trim " +  '"' + trim + '"') else ""} \
      ~{true="-shell" false="" shell}
  >>>
  parameter_meta {
    truncate: "Truncate the 3' end of the reads TO the specified length"
    dead_ends: "Maximum length for dead-end paths removal. Default value is set to 2*readLength-1."
    discard_non_usable: "<yes/no>   Reads that are involved in orphan nodes smaller than 1.5*readLength are considered as \"non-usable\". This filter discards such nodes. Default: enabled"
    trim: "Coverage cutoff for contigs ends: Contig ends ending in a gap may contain errors due to low coverage. This option trim a few bases from these ends until a minimum coverage is reached. Default is 4. Ends are not trimmed if set to 1."
    shell: "Interactive shell. Allows querying the assembly graph."
  }
}