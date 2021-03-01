version 1.0

task Filterpy {
  input {
    Array[Int] p_one
    Array[Int] p_two
    Float? q_fmt
    String? nb
    String? adp
    Int? msz
    Float? per
    Int? q_thr
    String? trim
    Int? ws_z
    Int? mlk
    Int? cpu
    File? of_mt
    String? no_vis
  }
  command <<<
    filter_py \
      ~{if defined(p_one) then ("--p1 " +  '"' + p_one + '"') else ""} \
      ~{if defined(p_two) then ("--p2 " +  '"' + p_two + '"') else ""} \
      ~{if defined(q_fmt) then ("--qfmt " +  '"' + q_fmt + '"') else ""} \
      ~{if defined(nb) then ("--nb " +  '"' + nb + '"') else ""} \
      ~{if defined(adp) then ("--adp " +  '"' + adp + '"') else ""} \
      ~{if defined(msz) then ("--msz " +  '"' + msz + '"') else ""} \
      ~{if defined(per) then ("--per " +  '"' + per + '"') else ""} \
      ~{if defined(q_thr) then ("--qthr " +  '"' + q_thr + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(ws_z) then ("--wsz " +  '"' + ws_z + '"') else ""} \
      ~{if defined(mlk) then ("--mlk " +  '"' + mlk + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(of_mt) then ("--ofmt " +  '"' + of_mt + '"') else ""} \
      ~{if defined(no_vis) then ("--no-vis " +  '"' + no_vis + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/htseqqc:v1.0--pyh5bfb8f1_0"
  }
  parameter_meta {
    p_one: "Single end input files or left files for paired-end\\ndata (.fastq, .fq). Multiple sample files must be\\nseparated by comma or space"
    p_two: "Right files for paired-end data (.fastq, .fq).\\nMultiple files must be separated by comma or space"
    q_fmt: "Quality value format [1= Illumina 1.8, 2= Illumina\\n1.3,3= Sanger]. If quality format not provided, it\\nwill automatically detect based on sequence data"
    nb: "Filter the reads containing given % of uncalled bases\\n(N)"
    adp: "Trim the adapter and truncate the read sequence\\n(multiple adapter sequences must be separated by\\ncomma)"
    msz: "Filter the reads which are lesser than minimum size"
    per: "Truncate the read sequence if it matches to adapter\\nsequence equal or more than given percent (0.0-1.0)\\n[default=0.9]"
    q_thr: "Filter the read sequence if average quality of bases\\nin reads is lower than threshold (1-40) [default:20]"
    trim: "If trim option set to True, the reads with low quality\\n(as defined by option --qthr) will be trimmed instead\\nof discarding [True|False] [default: False]"
    ws_z: "The window size for trimming (5->3) the reads. This\\noption should always set when -trim option is defined\\n[default: 5]"
    mlk: "Minimum length of the reads to retain after trimming"
    cpu: "Number of CPU [default:2]"
    of_mt: "Output file format (fastq/fasta) [default:fastq]"
    no_vis: "No figures will be produced [True|False]\\n[default:False]"
  }
  output {
    File out_stdout = stdout()
    File out_of_mt = "${in_of_mt}"
  }
}