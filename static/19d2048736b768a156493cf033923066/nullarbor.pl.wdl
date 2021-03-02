version 1.0

task Nullarborpl {
  input {
    String? name
    File? ref
    File? input_tsv_file
    Directory? outdir
    String? mode
    Int? cpus
    Boolean? force
    Boolean? quiet
    Boolean? verbose
    Boolean? check
    Boolean? run
    File? conf
    Int? g_code
    Boolean? trim
    String? mlst
    Int? min_ctg
    Boolean? prefill
    Boolean? link_cmd
    Int? snippy_opt
    Float? roar_y_opt
    String? mask
    Boolean? auto
    String? assembler
    String? assembler_opt
    String? tree_builder
    String? tree_builder_opt
    Int? tax_one_r
    String? tax_one_r_opt
    String? annotator
    String? annotator_opt
  }
  command <<<
    nullarbor_pl \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(input_tsv_file) then ("--input " +  '"' + input_tsv_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (run) then "--run" else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(g_code) then ("--gcode " +  '"' + g_code + '"') else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if defined(mlst) then ("--mlst " +  '"' + mlst + '"') else ""} \
      ~{if defined(min_ctg) then ("--minctg " +  '"' + min_ctg + '"') else ""} \
      ~{if (prefill) then "--prefill" else ""} \
      ~{if (link_cmd) then "--link-cmd" else ""} \
      ~{if defined(snippy_opt) then ("--snippy_opt " +  '"' + snippy_opt + '"') else ""} \
      ~{if defined(roar_y_opt) then ("--roary_opt " +  '"' + roar_y_opt + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if (auto) then "--auto" else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(assembler_opt) then ("--assembler-opt " +  '"' + assembler_opt + '"') else ""} \
      ~{if defined(tree_builder) then ("--treebuilder " +  '"' + tree_builder + '"') else ""} \
      ~{if defined(tree_builder_opt) then ("--treebuilder-opt " +  '"' + tree_builder_opt + '"') else ""} \
      ~{if defined(tax_one_r) then ("--taxoner " +  '"' + tax_one_r + '"') else ""} \
      ~{if defined(tax_one_r_opt) then ("--taxoner-opt " +  '"' + tax_one_r_opt + '"') else ""} \
      ~{if defined(annotator) then ("--annotator " +  '"' + annotator + '"') else ""} \
      ~{if defined(annotator_opt) then ("--annotator-opt " +  '"' + annotator_opt + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "Job name"
    ref: "Reference file in FASTA or GBK format"
    input_tsv_file: "Input TSV file with format:  | Isolate_ID | R1.fq.gz | R2.fq.gz |"
    outdir: "Output folder"
    mode: "Run mode: [all] preview"
    cpus: "Maximum number of CPUs to use in total (1)"
    force: "Overwrite --outdir (useful for adding samples to existing analysis)"
    quiet: "No screen output"
    verbose: "More screen output"
    check: "Check dependencies and exit"
    run: "Immediately launch Makefile"
    conf: "Config file (/usr/local/bin/../conf/nullarbor.conf)"
    g_code: "Genetic code for prokka (11)"
    trim: "Trim reads of adaptors (0)"
    mlst: "Force this MLST scheme (AUTO)"
    min_ctg: "Minimum contig length for Prokka and Roary"
    prefill: "Use precomputed data as per --conf file. Use --no-prefill to override."
    link_cmd: "'CMD'       Command to symlink/copy FASTQ files into --outdir ('ln -s -f')"
    snippy_opt: "Options to pass to snippy eg. '--mincov 10 --ram 32' ()"
    roar_y_opt: "Options to pass to roary eg. '-iv 1.75 -s -cd 97' ()"
    mask: "| auto      Mask core SNPS in these regions or 'auto' ()"
    auto: "Be lazy and guess --name,--ref,--input,--outdir,--mask"
    assembler: "Assembler to use: megahit shovill skesa skesa_fast spades (skesa)"
    assembler_opt: "Extra assembler options to pass ()"
    tree_builder: "Tree-builder to use: fasttree iqtree iqtree_fast iqtree_slow (iqtree_fast)"
    tree_builder_opt: "Extra tree-builder options to pass ()"
    tax_one_r: "Species ID tool to use: centrifuge kraken kraken2 (kraken)"
    tax_one_r_opt: "Extra species ID builder options to pass ()"
    annotator: "Genome annotator to use: prokka_fast (prokka_fast)"
    annotator_opt: "Extra annotator options to pass ()"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}