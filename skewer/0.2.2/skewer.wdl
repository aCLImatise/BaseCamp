version 1.0

task Skewer {
  input {
    File? adapter_sequencefile_agatcggaagagcacacgtctgaactccagtcac
    File? adapter_sequencefile_pairend
    File? matrix
    File? junction_adapter_sequencefile
    Int? mode
    Boolean? barcode
    Int? maximum_allowed_errors
    Int? maximum_allowed_rate
    Int? minimum_overlap_length
    Int? cut
    Boolean? cut_three
    Boolean? end_quality
    Int? mean_quality
    Int? min
    Int? max
    Boolean? filter_degenerative_many
    Boolean? filter_undetermined_matepair
    String? fill_ns
    String? format
    File? base_name_output
    Boolean? compress
    Boolean? stdout
    Boolean? q_ii_me
    Boolean? quiet
    File? masked_output
    File? excluded_output
    Boolean? intelligent
    Int? threads
    String reads_dot_fast_q
    String? paired_reads_dot_fast_q
  }
  command <<<
    skewer \
      ~{reads_dot_fast_q} \
      ~{paired_reads_dot_fast_q} \
      ~{if defined(adapter_sequencefile_agatcggaagagcacacgtctgaactccagtcac) then ("-x " +  '"' + adapter_sequencefile_agatcggaagagcacacgtctgaactccagtcac + '"') else ""} \
      ~{if defined(adapter_sequencefile_pairend) then ("-y " +  '"' + adapter_sequencefile_pairend + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(junction_adapter_sequencefile) then ("-j " +  '"' + junction_adapter_sequencefile + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (barcode) then "--barcode" else ""} \
      ~{if defined(maximum_allowed_errors) then ("-r " +  '"' + maximum_allowed_errors + '"') else ""} \
      ~{if defined(maximum_allowed_rate) then ("-d " +  '"' + maximum_allowed_rate + '"') else ""} \
      ~{if defined(minimum_overlap_length) then ("-k " +  '"' + minimum_overlap_length + '"') else ""} \
      ~{if defined(cut) then ("--cut " +  '"' + cut + '"') else ""} \
      ~{if (cut_three) then "--cut3" else ""} \
      ~{if (end_quality) then "--end-quality" else ""} \
      ~{if defined(mean_quality) then ("--mean-quality " +  '"' + mean_quality + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if (filter_degenerative_many) then "-n" else ""} \
      ~{if (filter_undetermined_matepair) then "-u" else ""} \
      ~{if defined(fill_ns) then ("--fillNs " +  '"' + fill_ns + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(base_name_output) then ("--output " +  '"' + base_name_output + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (q_ii_me) then "--qiime" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (masked_output) then "--masked-output" else ""} \
      ~{if defined(excluded_output) then ("--excluded-output " +  '"' + excluded_output + '"') else ""} \
      ~{if (intelligent) then "--intelligent" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    adapter_sequencefile_agatcggaagagcacacgtctgaactccagtcac: "Adapter sequence/file (AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC)"
    adapter_sequencefile_pairend: "Adapter sequence/file for pair-end reads (AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTA),\\nimplied by -x if -x is the only one specified explicitly."
    matrix: "File indicates valid adapter pairing (all-ones matrix)."
    junction_adapter_sequencefile: "Junction adapter sequence/file for Nextera Mate Pair reads (CTGTCTCTTATACACATCTAGATGTGTATAAGAGACAG)"
    mode: "trimming mode; 1) single-end -- head: 5' end; tail: 3' end; any: anywhere (tail)\\n2) paired-end -- pe: paired-end; mp: mate-pair; ap: amplicon (pe)"
    barcode: "Demultiplex reads according to adapters/primers (no)"
    maximum_allowed_errors: "Maximum allowed error rate (normalized #errors / length of aligned region) [0, 0.5], (0.1)"
    maximum_allowed_rate: "Maximum allowed indel error rate [0, r], (0.03)\\nreciprocal is used for -r, -e and -d when num > or = 2"
    minimum_overlap_length: "Minimum overlap length for adapter detection [1, inf);\\n(max(1, int(4-10*r)) for single-end; (<junction length>/2) for mate-pair)"
    cut: ",<int> Hard clip off the 5' leading bases as the barcodes in amplicon mode; (no)"
    cut_three: "Hard clip off the 3' tailing bases if the read length is greater than\\nthe maximum read length specified by -L; (no)"
    end_quality: "<int> Trim 3' end until specified or higher quality reached; (0)"
    mean_quality: "The lowest mean quality value allowed before trimming; (0)"
    min: "The minimum read length allowed after trimming; (18)"
    max: "The maximum read length allowed after trimming; (no limit)"
    filter_degenerative_many: "Whether to filter out highly degenerative (many Ns) reads; (no)"
    filter_undetermined_matepair: "Whether to filter out undetermined mate-pair reads; (no)"
    fill_ns: "to replace trimmed bases with Ns (has no effect with 'b' or '-m mp'); (no)"
    format: "Format of FASTQ quality value: sanger|solexa|auto; (auto)"
    base_name_output: "Base name of output file; ('<reads>.trimmed')"
    compress: "Compress output in GZIP format (no)"
    stdout: "Redirect output to STDOUT, suppressing -b, -o, and -z options (no)"
    q_ii_me: "Prepare the \\\"barcodes.fastq\\\" and \\\"mapping_file.txt\\\" for processing with QIIME; (default: no)"
    quiet: "No progress update (not quiet)"
    masked_output: "Write output file(s) for trimmed reads (trimmed bases converted to lower case) (no)"
    excluded_output: "output file(s) for excluded reads (no)"
    intelligent: "For mate-pair mode, whether to redistribute reads based on junction information; (no)"
    threads: "Number of concurrent threads [1, 32]; (1)"
    reads_dot_fast_q: ""
    paired_reads_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
    File out_base_name_output = "${in_base_name_output}"
    File out_masked_output = "${in_masked_output}"
    File out_excluded_output = "${in_excluded_output}"
  }
}