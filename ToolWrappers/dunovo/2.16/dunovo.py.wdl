version 1.0

task Dunovopy {
  input {
    Directory? outdir
    File? suffix
    Directory? du_novo_dir
    String? pos
    String? aligner
    Int? min_reads
    Int? qual
    Float? cons_th_res
    Int? min_cons_reads
    String? fake_phred
    Boolean? no_check_ids
    String? threads
    String? filt_bases
    Int? min_length
    Directory? log_dir
    Boolean? no_validate
    String? t
    Int reads_one_dot_fq
    Int reads_two_dot_fq
    String families_do_tpy_dot
    String scripts_dot
  }
  command <<<
    dunovo_py \
      ~{reads_one_dot_fq} \
      ~{reads_two_dot_fq} \
      ~{families_do_tpy_dot} \
      ~{scripts_dot} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(du_novo_dir) then ("--dunovo-dir " +  '"' + du_novo_dir + '"') else ""} \
      ~{if defined(pos) then ("--pos " +  '"' + pos + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(qual) then ("--qual " +  '"' + qual + '"') else ""} \
      ~{if defined(cons_th_res) then ("--cons-thres " +  '"' + cons_th_res + '"') else ""} \
      ~{if defined(min_cons_reads) then ("--min-cons-reads " +  '"' + min_cons_reads + '"') else ""} \
      ~{if defined(fake_phred) then ("--fake-phred " +  '"' + fake_phred + '"') else ""} \
      ~{if (no_check_ids) then "--no-check-ids" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(filt_bases) then ("--filt-bases " +  '"' + filt_bases + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(log_dir) then ("--log-dir " +  '"' + log_dir + '"') else ""} \
      ~{if (no_validate) then "--no-validate" else ""} \
      ~{if defined(t) then ("-T " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0"
  }
  parameter_meta {
    outdir: "The directory to create the output (and intermediate)\\nfiles in. Must exist already and not already contain\\nany of the output/intermediate files."
    suffix: "A string to use in naming the output files. If given,\\nwill be put just before the file extension (like\\n\\\"families.suffix.tsv\\\")."
    du_novo_dir: "The directory containing the version of Du Novo you\\nwant to run. Default: The directory containing this\\nscript (/usr/local/lib)."
    pos: "correct.py --pos. Default: the correct.py default."
    aligner: "align-families.py --aligner. Default: kalign"
    min_reads: "make-consensi.py --min-reads. Default: the make-\\nconsensi.py default."
    qual: "make-consensi.py --qual. Default: 25"
    cons_th_res: "make-consensi.py --cons-thres. Default: 0.7."
    min_cons_reads: "make-consensi.py --min-cons-reads. Default: the make-\\nconsensi.py default."
    fake_phred: "The PHRED score to assign to all output consensus\\nbases."
    no_check_ids: "Pass --no-check-ids to correct.py and align-"
    threads: "baralign.sh -t. Default: the baralign.sh default."
    filt_bases: "trimmer.py --filt-bases. Default: N"
    min_length: "trimmer.py --min-length. Default: 75"
    log_dir: "Write log output to files in this directory instead of\\nto stderr."
    no_validate: "Skip validation checks on the outputs of individual"
    t: ""
    reads_one_dot_fq: "Input reads (mate 1). Can be gzipped."
    reads_two_dot_fq: "Input reads (mate 2). Can be gzipped."
    families_do_tpy_dot: "-p PROCESSES, --processes PROCESSES"
    scripts_dot: "--version             Print the version number and exit."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_suffix = "${in_suffix}"
    Directory out_log_dir = "${in_log_dir}"
  }
}