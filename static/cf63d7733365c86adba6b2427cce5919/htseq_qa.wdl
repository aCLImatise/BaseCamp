version 1.0

task HtseqQa {
  input {
    String? type
    String? outfile
    String? read_length
    String? gamma
    Boolean? no_split
    Int? max_qual
    Boolean? primary_only
    Int? max_records
    String read_filename
  }
  command <<<
    htseq-qa \
      ~{read_filename} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(read_length) then ("--readlength " +  '"' + read_length + '"') else ""} \
      ~{if defined(gamma) then ("--gamma " +  '"' + gamma + '"') else ""} \
      ~{true="--nosplit" false="" no_split} \
      ~{if defined(max_qual) then ("--maxqual " +  '"' + max_qual + '"') else ""} \
      ~{true="--primary-only" false="" primary_only} \
      ~{if defined(max_records) then ("--max-records " +  '"' + max_records + '"') else ""}
  >>>
  parameter_meta {
    type: "type of read_file (one of: sam [default], bam, solexa- export, fastq, solexa-fastq)"
    outfile: "output filename (default is <read_file>.pdf)"
    read_length: "the maximum read length (when not specified, the script guesses from the file"
    gamma: "the gamma factor for the contrast adjustment of the quality score plot"
    no_split: "do not split reads in unaligned and aligned ones"
    max_qual: "the maximum quality score that appears in the data (default: 41)"
    primary_only: "For SAM/BAM input files, ignore alignments that are not primary. This only affects 'multimapper' reads that align to several regions in the genome. By choosing this option, each read will only count as one; without this option, each of its alignments counts as one."
    max_records: "Limit the analysis to the first N reads/alignments."
    read_filename: "The file to count reads in (SAM/BAM or Fastq)"
  }
}