version 1.0

task XteaLong {
  input {
    File? id
    File? par
    File? bam
    Int? cores
    String? memory
    String? partition
    String? time
    Boolean? lsf
    Boolean? slur_m
    Boolean? cmd
    Boolean? complex
    Boolean? mei_no_asm
    Boolean? clean
    Directory? path
    String? ref
    File? gene
    Int? win
    Directory? x_tea
    Directory? rep
    String? rms_k
    File? cns
    File? ref_sva
    Int? min
    Int? flag
    Int? type
    File? the_output_file
  }
  command <<<
    xtea_long \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(par) then ("--par " +  '"' + par + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(partition) then ("--partition " +  '"' + partition + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if (lsf) then "--lsf" else ""} \
      ~{if (slur_m) then "--slurm" else ""} \
      ~{if (cmd) then "--cmd" else ""} \
      ~{if (complex) then "--complex" else ""} \
      ~{if (mei_no_asm) then "--mei_no_asm" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(win) then ("--win " +  '"' + win + '"') else ""} \
      ~{if defined(x_tea) then ("--xtea " +  '"' + x_tea + '"') else ""} \
      ~{if defined(rep) then ("--rep " +  '"' + rep + '"') else ""} \
      ~{if defined(rms_k) then ("--rmsk " +  '"' + rms_k + '"') else ""} \
      ~{if defined(cns) then ("--cns " +  '"' + cns + '"') else ""} \
      ~{if defined(ref_sva) then ("--ref_sva " +  '"' + ref_sva + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(flag) then ("--flag " +  '"' + flag + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(the_output_file) then ("--output " +  '"' + the_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/xtea:0.1.3--0"
  }
  parameter_meta {
    id: "sample id list file"
    par: "parameter file"
    bam: "Input bam file"
    cores: "number of cores"
    memory: "Memory limit in GB"
    partition: "Which queue to run the job"
    time: "Time limit"
    lsf: "Indiates submit to LSF system"
    slur_m: "Indiates submit to slurm system"
    cmd: "Generate asm command script (for cluster)"
    complex: "Call complex events (TE promoted SV)"
    mei_no_asm: "Call MEI only without asm"
    clean: "Clean the intermediate files"
    path: "Working folder"
    ref: "reference genome"
    gene: "Gene annotation file"
    win: "peak window size"
    x_tea: "xTEA folder"
    rep: "Repeat library folder"
    rms_k: "RepeatMasker output on the reference"
    cns: "repeat consensus folder"
    ref_sva: "reference SVA copies"
    min: "Minimum copy length for find polymorhpic copies"
    flag: "Flag indicates which step to run (1-clip, 2-asm,\\n4-ghost, 8-classification, 16-clean)"
    type: "Type of repeats working on (1-LINE1, 2-Alu, 4-SVA,\\n8-HERV, 16-Mitochondria)"
    the_output_file: "The output file\\n"
  }
  output {
    File out_stdout = stdout()
    File out_the_output_file = "${in_the_output_file}"
  }
}