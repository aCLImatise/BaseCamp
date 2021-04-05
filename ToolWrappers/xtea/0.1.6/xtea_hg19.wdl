version 1.0

task XteaHg19 {
  input {
    Boolean? decompress
    Boolean? mosaic
    Boolean? case_control
    Boolean? user
    Boolean? force
    Boolean? tumor
    String? purity
    Boolean? lsf
    Boolean? slur_m
    File? resume
    File? id
    File? par
    File? lib
    File? bam
    File? x_one_zero
    Int? cores
    String? memory
    String? partition
    String? time
    Directory? path
    String? ref
    File? gene
    Directory? x_tea
    Int? flag
    Int? rep_type
    File? fl_klen
    String? n_clip
    String? cr
    String? nd
    String? nf_clip
    String? nf_disc
    Int? teilen
    File? the_output_file
    File? blacklist
  }
  command <<<
    xtea_hg19 \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (mosaic) then "--mosaic" else ""} \
      ~{if (case_control) then "--case_control" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (tumor) then "--tumor" else ""} \
      ~{if defined(purity) then ("--purity " +  '"' + purity + '"') else ""} \
      ~{if (lsf) then "--lsf" else ""} \
      ~{if (slur_m) then "--slurm" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(par) then ("--par " +  '"' + par + '"') else ""} \
      ~{if defined(lib) then ("--lib " +  '"' + lib + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(x_one_zero) then ("--x10 " +  '"' + x_one_zero + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(partition) then ("--partition " +  '"' + partition + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(x_tea) then ("--xtea " +  '"' + x_tea + '"') else ""} \
      ~{if defined(flag) then ("--flag " +  '"' + flag + '"') else ""} \
      ~{if defined(rep_type) then ("--reptype " +  '"' + rep_type + '"') else ""} \
      ~{if defined(fl_klen) then ("--flklen " +  '"' + fl_klen + '"') else ""} \
      ~{if defined(n_clip) then ("--nclip " +  '"' + n_clip + '"') else ""} \
      ~{if defined(cr) then ("--cr " +  '"' + cr + '"') else ""} \
      ~{if defined(nd) then ("--nd " +  '"' + nd + '"') else ""} \
      ~{if defined(nf_clip) then ("--nfclip " +  '"' + nf_clip + '"') else ""} \
      ~{if defined(nf_disc) then ("--nfdisc " +  '"' + nf_disc + '"') else ""} \
      ~{if defined(teilen) then ("--teilen " +  '"' + teilen + '"') else ""} \
      ~{if defined(the_output_file) then ("--output " +  '"' + the_output_file + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/xtea:0.1.6--0"
  }
  parameter_meta {
    decompress: "Decompress the rep lib and reference file"
    mosaic: "Calling mosaic events from high coverage data"
    case_control: "Run in case control mode"
    user: "Use user specific parameters instead of automatically\\ncalculated ones"
    force: "Force to start from the very beginning"
    tumor: "Working on tumor samples"
    purity: "Tumor purity"
    lsf: "Indiates submit to LSF system"
    slur_m: "Indiates submit to slurm system"
    resume: "Resume the running, which will skip the step if output\\nfile already exists!"
    id: "sample id list file"
    par: "parameter file"
    lib: "TE lib config file"
    bam: "Input bam file"
    x_one_zero: "Input 10X bam file"
    cores: "number of cores"
    memory: "Memory limit in GB"
    partition: "Which queue to run the job"
    time: "Time limit"
    path: "Working folder"
    ref: "reference genome"
    gene: "Gene annotation file"
    x_tea: "xTEA folder"
    flag: "Flag indicates which step to run (1-clip, 2-disc,\\n4-barcode, 8-xfilter, 16-filter, 32-asm)"
    rep_type: "Type of repeats working on: 1-L1, 2-Alu, 4-SVA,\\n8-HERV, 16-Mitochondrial"
    fl_klen: "flank region file"
    n_clip: "cutoff of minimum # of clipped reads"
    cr: "cutoff of minimum # of clipped reads whose mates map\\nin repetitive regions"
    nd: "cutoff of minimum # of discordant pair"
    nf_clip: "cutoff of minimum # of clipped reads in filtering step"
    nf_disc: "cutoff of minimum # of discordant pair of each sample\\nin filtering step"
    teilen: "minimum length of the insertion for future analysis"
    the_output_file: "The output file"
    blacklist: "Reference panel database for filtering, or a blacklist\\nregion\\n"
  }
  output {
    File out_stdout = stdout()
    File out_resume = "${in_resume}"
    File out_the_output_file = "${in_the_output_file}"
  }
}