version 1.0

task SeqPurge {
  input {
    File? in_one
    File? in_two
    File? out_one
    File? out_two
    Int? a_one
    Int? a_two
    Float? match_perc
    Float? mep
    Int? q_cut
    Int? q_win
    Int? q_off
    Int? n_cut
    Int? min_len
    Int? threads
    File? out_three
    File? summary
    File? qc
    Int? prefetch
    Boolean? ec
    Boolean? debug
    Int? progress
    Int? compression_level
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    SeqPurge \
      ~{if defined(in_one) then ("-in1 " +  '"' + in_one + '"') else ""} \
      ~{if defined(in_two) then ("-in2 " +  '"' + in_two + '"') else ""} \
      ~{if defined(out_one) then ("-out1 " +  '"' + out_one + '"') else ""} \
      ~{if defined(out_two) then ("-out2 " +  '"' + out_two + '"') else ""} \
      ~{if defined(a_one) then ("-a1 " +  '"' + a_one + '"') else ""} \
      ~{if defined(a_two) then ("-a2 " +  '"' + a_two + '"') else ""} \
      ~{if defined(match_perc) then ("-match_perc " +  '"' + match_perc + '"') else ""} \
      ~{if defined(mep) then ("-mep " +  '"' + mep + '"') else ""} \
      ~{if defined(q_cut) then ("-qcut " +  '"' + q_cut + '"') else ""} \
      ~{if defined(q_win) then ("-qwin " +  '"' + q_win + '"') else ""} \
      ~{if defined(q_off) then ("-qoff " +  '"' + q_off + '"') else ""} \
      ~{if defined(n_cut) then ("-ncut " +  '"' + n_cut + '"') else ""} \
      ~{if defined(min_len) then ("-min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(out_three) then ("-out3 " +  '"' + out_three + '"') else ""} \
      ~{if defined(summary) then ("-summary " +  '"' + summary + '"') else ""} \
      ~{if defined(qc) then ("-qc " +  '"' + qc + '"') else ""} \
      ~{if defined(prefetch) then ("-prefetch " +  '"' + prefetch + '"') else ""} \
      ~{if (ec) then "-ec" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if defined(progress) then ("-progress " +  '"' + progress + '"') else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    in_one: "Forward input gzipped FASTQ file(s)."
    in_two: "Reverse input gzipped FASTQ file(s)."
    out_one: "Forward output gzipped FASTQ file."
    out_two: "Reverse output gzipped FASTQ file."
    a_one: "Forward adapter sequence (at least 15 bases).\\nDefault value: 'AGATCGGAAGAGCACACGTCTGAACTCCAGTCA'"
    a_two: "Reverse adapter sequence (at least 15 bases).\\nDefault value: 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'"
    match_perc: "Minimum percentage of matching bases for sequence/adapter matches.\\nDefault value: '80'"
    mep: "Maximum error probability of insert and adapter matches.\\nDefault value: '1e-06'"
    q_cut: "Quality trimming cutoff for trimming from the end of reads using a sliding window approach. Set to 0 to disable.\\nDefault value: '15'"
    q_win: "Quality trimming window size.\\nDefault value: '5'"
    q_off: "Quality trimming FASTQ score offset.\\nDefault value: '33'"
    n_cut: "Number of subsequent Ns to trimmed using a sliding window approach from the front of reads. Set to 0 to disable.\\nDefault value: '7'"
    min_len: "Minimum read length after adapter trimming. Shorter reads are discarded.\\nDefault value: '30'"
    threads: "The number of threads used for trimming (two additional threads are used for reading and writing).\\nDefault value: '1'"
    out_three: "Name prefix of singleton read output files (if only one read of a pair is discarded).\\nDefault value: ''"
    summary: "Write summary/progress to this file instead of STDOUT.\\nDefault value: ''"
    qc: "If set, a read QC file in qcML format is created (just like ReadQC).\\nDefault value: ''"
    prefetch: "Maximum number of reads that may be pre-fetched into memory to speed up trimming.\\nDefault value: '1000'"
    ec: "Enable error-correction of adapter-trimmed reads (only those with insert match).\\nDefault value: 'false'"
    debug: "Enables debug output (use only with one thread).\\nDefault value: 'false'"
    progress: "Enables progress output at the given interval in milliseconds (disabled by default).\\nDefault value: '-1'"
    compression_level: "Output FASTQ compression level from 1 (fastest) to 9 (best compression).\\nDefault value: '1'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out_one = "${in_out_one}"
    File out_out_two = "${in_out_two}"
  }
}