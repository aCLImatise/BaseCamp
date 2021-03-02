version 1.0

task Sword {
  input {
    File? query
    File? target
    Int? gap_open
    Int? gap_extend
    Int? matrix
    File? out
    File? out_fmt
    Float? evalue
    Int? max_aligns
    String? algorithm
    Int? km_er_length
    Int? max_candidates
    Int? threshold
    Int? threads
    String? arguments
  }
  command <<<
    sword \
      ~{arguments} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_fmt) then ("--outfmt " +  '"' + out_fmt + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(max_aligns) then ("--max-aligns " +  '"' + max_aligns + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(km_er_length) then ("--kmer-length " +  '"' + km_er_length + '"') else ""} \
      ~{if defined(max_candidates) then ("--max-candidates " +  '"' + max_candidates + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query: "(required)\\ninput fasta database query file"
    target: "(required)\\ninput fasta database target file"
    gap_open: "default: 10\\ngap opening penalty, must be given as a positive integer"
    gap_extend: "default: 1\\ngap extension penalty, must be given as a positive integer and\\nmust be less or equal to gap opening penalty"
    matrix: "default: BLOSUM_62\\nsimilarity matrix, can be one of the following:\\nBLOSUM_45\\nBLOSUM_50\\nBLOSUM_62\\nBLOSUM_80\\nBLOSUM_90\\nPAM_30\\nPAM_70\\nPAM_250"
    out: "default: stdout\\noutput file for the alignment"
    out_fmt: "default: bm9\\nout format for the output file, must be one of the following:\\nbm0      - blast m0 output format\\nbm8      - blast m8 tabular output format\\nbm9      - blast m9 commented tabular output format"
    evalue: "default: 10.0\\nevalue threshold, alignments with higher evalue are filtered,\\nmust be given as a positive float"
    max_aligns: "default: 10\\nmaximum number of alignments to be outputted"
    algorithm: "default: SW\\nalgorithm used for alignment, must be one of the following:\\nSW - Smith-Waterman local alignment\\nNW - Needleman-Wunsch global alignment\\nHW - semiglobal alignment\\nOV - overlap alignment"
    km_er_length: "default: 3\\nlength of kmers used for database search\\npossible values: 3, 4, 5"
    max_candidates: "default: 30000\\nnumber of target sequences (per query sequence) passed\\nto the alignment part"
    threshold: "default: 13\\nminimum score for two kmers to trigger a hit\\nif 0 given, only exact matching kmers are checked"
    threads: "default: hardware concurrency / 2\\nnumber of threads used in thread pool"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_out_fmt = "${in_out_fmt}"
  }
}