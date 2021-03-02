version 1.0

task FilterSinglepy {
  input {
    Int? p_one
    Int? msz
    Int? q_fmt
    Int? nb
    String? adp
    Float? per
    Int? q_thr
    Boolean? trim
    Int? ws_z
    Int? mlk
    Boolean? cpu
    File? of_mt
    Boolean? no_vis
    Boolean? filter_s
    String s_rap
  }
  command <<<
    Filter_Single_py \
      ~{s_rap} \
      ~{if defined(p_one) then ("--p1 " +  '"' + p_one + '"') else ""} \
      ~{if defined(msz) then ("--msz " +  '"' + msz + '"') else ""} \
      ~{if defined(q_fmt) then ("--qfmt " +  '"' + q_fmt + '"') else ""} \
      ~{if defined(nb) then ("--nb " +  '"' + nb + '"') else ""} \
      ~{if defined(adp) then ("--adp " +  '"' + adp + '"') else ""} \
      ~{if defined(per) then ("--per " +  '"' + per + '"') else ""} \
      ~{if defined(q_thr) then ("--qthr " +  '"' + q_thr + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(ws_z) then ("--wsz " +  '"' + ws_z + '"') else ""} \
      ~{if defined(mlk) then ("--mlk " +  '"' + mlk + '"') else ""} \
      ~{if (cpu) then "--cpu" else ""} \
      ~{if (of_mt) then "--ofmt" else ""} \
      ~{if defined(no_vis) then ("--no-vis " +  '"' + no_vis + '"') else ""} \
      ~{if (filter_s) then "-filter-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/htseqqc:v1.0--pyh5bfb8f1_0"
  }
  parameter_meta {
    p_one: "Input file (.fastq, .fq)"
    msz: "filter the reads which are lesser than minimum size"
    q_fmt: "Quality value format\\n1= Illumina 1.8\\n2= Illumina 1.3\\n3= Sanger"
    nb: "filter the reads containing given % of N"
    adp: "Trim the adapter sequence and truncate the read sequence [adapter sequence]"
    per: "Truncate the read sequence if it matches to adapter sequence equal or more than given percent (0.0-1.0) [default=0.9]"
    q_thr: "Filter the read sequence if average quality of bases in reads is lower than threshold (1-40) [default:20]"
    trim: "If trim option set to true, the reads with low quality (as defined by option --qthr) will be trimmed instead of discarding [default: False]"
    ws_z: "The window size for trimming (5'->3') the reads. This option should always set when -trim option is defined.\\nThe recommended windowsize for best result should be between 2-5 [default:5]"
    mlk: "The minimum length of the reads to retain after trimming"
    cpu: "Number of CPU [default:2]"
    of_mt: "Output file format (fastq/fasta) [default:fastq]"
    no_vis: "No figures will be produced [yes|no] [default:no]"
    filter_s: ""
    s_rap: ""
  }
  output {
    File out_stdout = stdout()
    File out_of_mt = "${in_of_mt}"
  }
}