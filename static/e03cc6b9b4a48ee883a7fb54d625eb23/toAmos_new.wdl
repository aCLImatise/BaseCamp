version 1.0

task ToAmosNew {
  input {
    File? library_matepair_information
    String? location_where_bank
    Boolean? include_surrogate_unitigs_asm
    Boolean? include_contigs_asm
    Boolean? include_unitigs_implies
    Boolean? include_surrogate_unitigs_have
    Boolean? output_only_layout
    Boolean? fastq_file_interleaved
    Boolean? _lib_identifier
    Boolean? min_insert_length
    Boolean? max_insert_length
    Boolean? fastq_quality_type
  }
  command <<<
    toAmos_new \
      ~{if defined(library_matepair_information) then ("-m " +  '"' + library_matepair_information + '"') else ""} \
      ~{if defined(location_where_bank) then ("-b " +  '"' + location_where_bank + '"') else ""} \
      ~{if (include_surrogate_unitigs_asm) then "-S" else ""} \
      ~{if (include_contigs_asm) then "-C" else ""} \
      ~{if (include_unitigs_implies) then "-U" else ""} \
      ~{if (include_surrogate_unitigs_have) then "-F" else ""} \
      ~{if (output_only_layout) then "-L" else ""} \
      ~{if (fastq_file_interleaved) then "-i" else ""} \
      ~{if (_lib_identifier) then "-I" else ""} \
      ~{if (min_insert_length) then "-N" else ""} \
      ~{if (max_insert_length) then "-X" else ""} \
      ~{if (fastq_quality_type) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    library_matepair_information: "- library and mate-pair information in Bambus format\\nin Trace Archive format (not compatible with -i option)"
    location_where_bank: "- The location where the AMOS bank will be stored."
    include_surrogate_unitigs_asm: "- include the surrogate unitigs in the .asm file as AMOS contigs."
    include_contigs_asm: "- include the contigs in the .asm file as AMOS contigs."
    include_unitigs_implies: "- include the unitigs in the .asm file as AMOS contigs (implies -S and turns off -C)."
    include_surrogate_unitigs_have: "- include the surrogate unitigs as reads in the tilling for a contig. Without this option the contig may have 0-coverage regions of coverage."
    output_only_layout: "- output only the layout, not the consensus sequence for contigs. Will not output contig links or scaffolds. Implies -F."
    fastq_file_interleaved: "- fastq file is interleaved, parse mates from this file (mutually exclusive with -m option)"
    _lib_identifier: "- lib Identifier"
    min_insert_length: "- min insert length"
    max_insert_length: "- max insert length"
    fastq_quality_type: "- fastq quality type. The currently supported types are ILLUMINA SANGER. The default is SANGER"
  }
  output {
    File out_stdout = stdout()
  }
}