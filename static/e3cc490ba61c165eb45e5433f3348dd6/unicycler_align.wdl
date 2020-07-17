version 1.0

task UnicyclerAlign {
  input {
    String? ref
    String? reads
    String? sam
    String? contamination
    String? scores
    String? low_score
    Boolean? keep_bad
    String? sensitivity
    String? threads
    String? verbosity
    Int? min_len
    String? allowed_overlap
  }
  command <<<
    unicycler_align \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(contamination) then ("--contamination " +  '"' + contamination + '"') else ""} \
      ~{if defined(scores) then ("--scores " +  '"' + scores + '"') else ""} \
      ~{if defined(low_score) then ("--low_score " +  '"' + low_score + '"') else ""} \
      ~{true="--keep_bad" false="" keep_bad} \
      ~{if defined(sensitivity) then ("--sensitivity " +  '"' + sensitivity + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(allowed_overlap) then ("--allowed_overlap " +  '"' + allowed_overlap + '"') else ""}
  >>>
  parameter_meta {
    ref: "FASTA file containing one or more reference sequences"
    reads: "FASTQ or FASTA file of long reads"
    sam: "SAM file of resulting alignments"
    contamination: "FASTA file of known contamination in long reads"
    scores: "Comma-delimited string of alignment scores: match, mismatch, gap open, gap extend (default: 3,-6,-5,-2)"
    low_score: "Score threshold - alignments below this are considered poor (default: set threshold automatically)"
    keep_bad: "Include alignments in the results even if they are below the low score threshold (default: low-scoring alignments are discarded)"
    sensitivity: "A number from 0 (least sensitive) to 3 (most sensitive) (default: 0)"
    threads: "Number of threads used (default: number of CPUs, up to 8)"
    verbosity: "Level of stdout information (0 to 4) (default: 1)"
    min_len: "Minimum alignment length (bp) - exclude alignments shorter than this length (default: 100)"
    allowed_overlap: "Allow this much overlap between alignments in a single read (default: 100)"
  }
}