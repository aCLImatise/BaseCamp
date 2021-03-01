version 1.0

task Vdjer {
  input {
    File? ref_dir
    Boolean? mf
    Boolean? mq
    Boolean? mcs
    Boolean? threads_default
    Boolean? am
    Int? miw
    Boolean? ws
    Boolean? j_ext
    Boolean? vr
    Int? ins
    Boolean? kmer_size_default
    Boolean? vk
    Boolean? mrs
    Boolean? rs
    Boolean? ms
    Boolean? e_zero
    Boolean? e_one
  }
  command <<<
    vdjer \
      ~{if defined(ref_dir) then ("--ref-dir " +  '"' + ref_dir + '"') else ""} \
      ~{if (mf) then "--mf" else ""} \
      ~{if (mq) then "--mq" else ""} \
      ~{if (mcs) then "--mcs" else ""} \
      ~{if (threads_default) then "--t" else ""} \
      ~{if (am) then "--am" else ""} \
      ~{if defined(miw) then ("--miw " +  '"' + miw + '"') else ""} \
      ~{if (ws) then "--ws" else ""} \
      ~{if (j_ext) then "--jext" else ""} \
      ~{if (vr) then "--vr" else ""} \
      ~{if defined(ins) then ("--ins " +  '"' + ins + '"') else ""} \
      ~{if (kmer_size_default) then "--k" else ""} \
      ~{if (vk) then "--vk" else ""} \
      ~{if (mrs) then "--mrs" else ""} \
      ~{if (rs) then "--rs" else ""} \
      ~{if (ms) then "--ms" else ""} \
      ~{if (e_zero) then "--e0" else ""} \
      ~{if (e_one) then "--e1" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_dir: "</path/to/vdjer/ref/dir>"
    mf: "<min node frequency (default: 3)>"
    mq: "<min base quality (default: 90)>"
    mcs: "<min contig score (default: -5)"
    threads_default: "<threads (default: 1)"
    am: "<anchor mismatches (default: 4)"
    miw: "<conserved J amino acid (W|F)"
    ws: "<window span (default: 486)"
    j_ext: "<J extension (default: 162)"
    vr: "<V region locus (chr:start-stop)>"
    ins: "<read filter floor (default: 1)"
    kmer_size_default: "<kmer size (default: 35)>"
    vk: "<vregion kmer size (default: 15)>"
    mrs: "<min source node homology score (default: 30)"
    rs: "<read span distance (default: 35)>"
    ms: "<mate span distance (default: 48)>"
    e_zero: "<start position for contig filtering (default: 52)>"
    e_one: "<stop position for contig filtering (default: 411)>"
  }
  output {
    File out_stdout = stdout()
  }
}