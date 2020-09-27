version 1.0

task UnicyclerAlign {
  input {
    File? ref
    File? sam
    File? contamination
    String? scores
    String? low_score
    Boolean? keep_bad
    Int? sensitivity
    Int? threads
    Int? verbosity
    Int? min_len
    Int? allowed_overlap
    String? reads
    String sequences
  }
  command <<<
    unicycler_align \
      ~{sequences} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(contamination) then ("--contamination " +  '"' + contamination + '"') else ""} \
      ~{if defined(scores) then ("--scores " +  '"' + scores + '"') else ""} \
      ~{if defined(low_score) then ("--low_score " +  '"' + low_score + '"') else ""} \
      ~{if (keep_bad) then "--keep_bad" else ""} \
      ~{if defined(sensitivity) then ("--sensitivity " +  '"' + sensitivity + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(allowed_overlap) then ("--allowed_overlap " +  '"' + allowed_overlap + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""}
  >>>
  parameter_meta {
    ref: "FASTA file containing one or more reference"
    sam: "SAM file of resulting alignments"
    contamination: "FASTA file of known contamination in long reads"
    scores: "Comma-delimited string of alignment scores: match,\\nmismatch, gap open, gap extend (default: 3,-6,-5,-2)"
    low_score: "Score threshold - alignments below this are\\nconsidered poor (default: set threshold\\nautomatically)"
    keep_bad: "Include alignments in the results even if they are\\nbelow the low score threshold (default: low-scoring\\nalignments are discarded)"
    sensitivity: "A number from 0 (least sensitive) to 3 (most\\nsensitive) (default: 0)"
    threads: "Number of threads used (default: number of CPUs, up\\nto 8)"
    verbosity: "Level of stdout information (0 to 4) (default: 1)"
    min_len: "Minimum alignment length (bp) - exclude alignments\\nshorter than this length (default: 100)"
    allowed_overlap: "Allow this much overlap between alignments in a\\nsingle read (default: 100)\\n"
    reads: ""
    sequences: "--reads READS           FASTQ or FASTA file of long reads"
  }
  output {
    File out_stdout = stdout()
  }
}