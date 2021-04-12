version 1.0

task StartAlignpl {
  input {
    File? genome
    File? prot
    Int? cpu
    File? dir
    String? list
    File? log
    Int? max_intron_len
    Boolean? reg
    String? offset
    String? prg
    String? pos
    Boolean? alignment_tool_path
    Int? args
    Boolean? nice
  }
  command <<<
    startAlign_pl \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(prot) then ("--prot " +  '"' + prot + '"') else ""} \
      ~{if defined(cpu) then ("--CPU " +  '"' + cpu + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(max_intron_len) then ("--maxintronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{if (reg) then "--reg" else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(prg) then ("--prg " +  '"' + prg + '"') else ""} \
      ~{if defined(pos) then ("--pos " +  '"' + pos + '"') else ""} \
      ~{if (alignment_tool_path) then "--ALIGNMENT_TOOL_PATH" else ""} \
      ~{if defined(args) then ("--args " +  '"' + args + '"') else ""} \
      ~{if (nice) then "--nice" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  parameter_meta {
    genome: "fasta file with DNA sequences"
    prot: "fasta file with protein sequences"
    cpu: "Specifies the maximum number of CPUs that can be used during"
    dir: "/to/dir            Set path to working directory. In the working directory results"
    list: "Contains contig and protein ID. Format: contigID proteinID"
    log: "Log file"
    max_intron_len: "Exonerate option: Alignments with longer gaps are discarded (default 30000)."
    reg: "Use region parts and not whole sequences."
    offset: "This many bp are added before and after cutout coordinates."
    prg: "Alignment program to call. Valid options are 'gth', 'spaln' or 'exonerate'."
    pos: "Contains information on contigs and genome sequence. Format"
    alignment_tool_path: "=/path/to/binary"
    args: "additional command line parameters for alignment tool to be executed,\\nexample: --args=\\\"-prinmatchlen 24 -prseedlength 10 -prhdist 4\\\""
    nice: "Execute all system calls within braker.pl and its submodules with bash \\\"nice\\\""
  }
  output {
    File out_stdout = stdout()
  }
}