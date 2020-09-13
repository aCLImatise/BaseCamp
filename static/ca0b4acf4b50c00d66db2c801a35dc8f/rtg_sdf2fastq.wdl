version 1.0

task RtgSdf2fastq {
  input {
    String? sdf_containing_sequences
    File? output_filename_extension
    Int? end_id
    File? id_file
    Int? start_id
    Int? names
    Int? default_quality
    File? interleave
    Int? line_length
    Boolean? no_gzip
    String times
  }
  command <<<
    rtg sdf2fastq \
      ~{times} \
      ~{if defined(sdf_containing_sequences) then ("--input " +  '"' + sdf_containing_sequences + '"') else ""} \
      ~{if defined(output_filename_extension) then ("--output " +  '"' + output_filename_extension + '"') else ""} \
      ~{if defined(end_id) then ("--end-id " +  '"' + end_id + '"') else ""} \
      ~{if defined(id_file) then ("--id-file " +  '"' + id_file + '"') else ""} \
      ~{if defined(start_id) then ("--start-id " +  '"' + start_id + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(default_quality) then ("--default-quality " +  '"' + default_quality + '"') else ""} \
      ~{if (interleave) then "--interleave" else ""} \
      ~{if defined(line_length) then ("--line-length " +  '"' + line_length + '"') else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""}
  >>>
  parameter_meta {
    sdf_containing_sequences: "SDF containing sequences"
    output_filename_extension: "output filename (extension added if not present).\\nUse '-' to write to standard output"
    end_id: "exclusive upper bound on sequence id"
    id_file: "file containing sequence ids, or sequence names if"
    start_id: "inclusive lower bound on sequence id"
    names: "is set. May be specified 0 or more"
    default_quality: "default quality value to use if the SDF does not\\ncontain quality data (0-63)"
    interleave: "interleave paired data into a single output file.\\nDefault is to split to separate output files"
    line_length: "maximum number of nucleotides to print on a line of\\noutput. A value of 0 indicates no limit (Default is\\n0)"
    no_gzip: "do not gzip the output"
    times: "Utility"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_extension = "${in_output_filename_extension}"
    File out_interleave = "${in_interleave}"
  }
}