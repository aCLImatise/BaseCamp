version 1.0

task ToAmosNew {
  input {
    String? t
    String? location_where_stored
    Boolean? include_surrogate_unitigs_file
    Boolean? include_contigs_file
    Boolean? include_unitigs_implies
    Boolean? include_surrogate_unitigs_reads
    Boolean? output_only_layout
    Boolean? fastq_file_interleaved
    Boolean? _lib_identifier
    Boolean? min_insert_length
    Boolean? max_insert_length
  }
  command <<<
    toAmos_new \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(location_where_stored) then ("-b " +  '"' + location_where_stored + '"') else ""} \
      ~{true="-S" false="" include_surrogate_unitigs_file} \
      ~{true="-C" false="" include_contigs_file} \
      ~{true="-U" false="" include_unitigs_implies} \
      ~{true="-F" false="" include_surrogate_unitigs_reads} \
      ~{true="-L" false="" output_only_layout} \
      ~{true="-i" false="" fastq_file_interleaved} \
      ~{true="-I" false="" _lib_identifier} \
      ~{true="-N" false="" min_insert_length} \
      ~{true="-X" false="" max_insert_length}
  >>>
  parameter_meta {
    t: "[SCUFL]"
    location_where_stored: "- The location where the AMOS bank will be stored."
    include_surrogate_unitigs_file: "- include the surrogate unitigs in the .asm file as AMOS contigs."
    include_contigs_file: "- include the contigs in the .asm file as AMOS contigs."
    include_unitigs_implies: "- include the unitigs in the .asm file as AMOS contigs (implies -S and turns off -C)."
    include_surrogate_unitigs_reads: "- include the surrogate unitigs as reads in the tilling for a contig. Without this option the contig may have 0-coverage regions of coverage."
    output_only_layout: "- output only the layout, not the consensus sequence for contigs. Will not output contig links or scaffolds. Implies -F."
    fastq_file_interleaved: "- fastq file is interleaved, parse mates from this file (mutually exclusive with -m option)"
    _lib_identifier: "- lib Identifier"
    min_insert_length: "- min insert length"
    max_insert_length: "- max insert length"
  }
}