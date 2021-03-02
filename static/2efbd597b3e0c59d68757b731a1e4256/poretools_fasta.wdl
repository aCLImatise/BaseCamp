version 1.0

task PoretoolsFasta {
  input {
    Boolean? quiet
    String? type
    String? start
    String? end
    Int? min_length
    Int? max_length
    Boolean? high_quality
    String files
  }
  command <<<
    poretools fasta \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if (high_quality) then "--high-quality" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    type: "Which type of FASTQ entries should be reported?\\nDef.=all"
    start: "Only report reads from after start timestamp"
    end: "Only report reads from before end timestamp"
    min_length: "Minimum read length for FASTA entry to be reported."
    max_length: "Maximum read length for FASTA entry to be reported."
    high_quality: "Only report reads with more complement events than"
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}