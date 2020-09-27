version 1.0

task Htseqqa {
  input {
    String? type
    File? outfile
    Int? read_length
    String? gamma
    Boolean? no_split
    Int? max_qual
    Boolean? primary_only
    Int? max_records
  }
  command <<<
    htseq_qa \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(read_length) then ("--readlength " +  '"' + read_length + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{if (no_split) then "--nosplit" else ""} \
      ~{if defined(max_qual) then ("--maxqual " +  '"' + max_qual + '"') else ""} \
      ~{if (primary_only) then "--primary-only" else ""} \
      ~{if defined(max_records) then ("--max-records " +  '"' + max_records + '"') else ""}
  >>>
  parameter_meta {
    type: "type of read_file (one of: sam [default], bam, solexa-\\nexport, fastq, solexa-fastq)"
    outfile: "output filename (default is <read_file>.pdf)"
    read_length: "the maximum read length (when not specified, the\\nscript guesses from the file"
    gamma: "the gamma factor for the contrast adjustment of the\\nquality score plot"
    no_split: "do not split reads in unaligned and aligned ones"
    max_qual: "the maximum quality score that appears in the data\\n(default: 41)"
    primary_only: "For SAM/BAM input files, ignore alignments that are\\nnot primary. This only affects 'multimapper' reads\\nthat align to several regions in the genome. By\\nchoosing this option, each read will only count as\\none; without this option, each of its alignments\\ncounts as one."
    max_records: "Limit the analysis to the first N reads/alignments.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}