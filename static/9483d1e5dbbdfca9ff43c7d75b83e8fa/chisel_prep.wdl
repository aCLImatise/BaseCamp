version 1.0

task ChiselPrep {
  input {
    String? reference
    Directory? run_dir
    Directory? output_name_running
    Int? re_xp_name
    Int? re_xp_read
    Boolean? no_duplicates
    Boolean? keep_tmpdir
    Int? barcode_length
    File? bcf_tools
    File? sam_tools
    File? bwa
    Int? jobs
    String? seed
    String input_fastqs_bams
  }
  command <<<
    chisel_prep \
      ~{input_fastqs_bams} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(run_dir) then ("--rundir " +  '"' + run_dir + '"') else ""} \
      ~{if defined(output_name_running) then ("--output " +  '"' + output_name_running + '"') else ""} \
      ~{if defined(re_xp_name) then ("--rexpname " +  '"' + re_xp_name + '"') else ""} \
      ~{if defined(re_xp_read) then ("--rexpread " +  '"' + re_xp_read + '"') else ""} \
      ~{if (no_duplicates) then "--noduplicates" else ""} \
      ~{if (keep_tmpdir) then "--keeptmpdir" else ""} \
      ~{if defined(barcode_length) then ("--barcodelength " +  '"' + barcode_length + '"') else ""} \
      ~{if defined(bcf_tools) then ("--bcftools " +  '"' + bcf_tools + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if defined(bwa) then ("--bwa " +  '"' + bwa + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chisel:0.0.5--py_0"
  }
  parameter_meta {
    reference: "Reference genome, which is mandatory in FASTQ mode\\n(default: None)"
    run_dir: "Running directory (default: current directory)"
    output_name_running: "Output name in running directory (default:\\nbarcodedcells.bam)"
    re_xp_name: "Regulare expression to extract cell name from input\\nFASTQ filenames (default:\\n`(.*)_S.*_L.*_R[1|2]_001.fastq.*`)"
    re_xp_read: "Regulare expression to extract cell name from input\\nFASTQ filenames (default:\\n`.*_S.*_L.*_(R[1|2])_001.fastq.*`)"
    no_duplicates: "Do not perform marking duplicates and recalibration\\nwith Picard tools (default: False)"
    keep_tmpdir: "Do not erase temporary directory (default: False)"
    barcode_length: "Length of barcodes (default: 12)"
    bcf_tools: "Path to the directory to \\\"bcftools\\\" executable\\n(default: in $PATH)"
    sam_tools: "Path to the directory to \\\"samtools\\\" executable\\n(default: in $PATH)"
    bwa: "Path to the directory to \\\"bwa\\\" executable (default: in\\n$PATH)"
    jobs: "Number of parallele jobs to use (default: equal to\\nnumber of available processors)"
    seed: "Random seed for replication (default: None)"
    input_fastqs_bams: "Input FASTQs, BAMs, or TSV file with different\\nbehaviors: .........................................\\n(1) FASTQs -- specified in a directory DIR as\\n`DIR/*.fastq` or `DIR/*.fastq.gz` -- will be barcoded\\nand aligned with (optionally) marked duplicates into a\\nbarcoded BAM file; .................................\\n(2) BAMs -- specified in a directory DIR as\\n`DIR/*.bam` -- will be barcoded and aligned with\\n(optionally) marked duplicates into a barcoded BAM\\nfile; ..............................................\\n(3) a single BAM file with unique cells names in the\\nfield `RG:Z:` will be converted into a barcoded BAM\\nfile with the additional `CB:Z:` tag; ..............\\n(4) a tab-separated table of inputs (TSV with optional\\nheader starting with `#`) with two columns: the first\\ncolumn is an input file (FASTQ or BAM) and the second\\ncolumn is the corresponding cell name. When FASTQs are\\nprovided, a third column can be optionally specified\\nto indicate the read name in paired-end sequencing,\\ne.g., indicating either R1 or R2 for the first or\\nsecond mate of paired-end reads, respectively. If a\\nthird column is not present, FASTQs are assumed to be\\nfrom single-end sequencing."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_name_running = "${in_output_name_running}"
  }
}