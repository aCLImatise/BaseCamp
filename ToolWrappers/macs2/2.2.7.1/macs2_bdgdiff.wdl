version 1.0

task Macs2Bdgdiff {
  input {
    Int? tone
    Int? t_two
    Int? cone
    Int? c_two
    Int? cut_off
    Int? min_len
    Int? max_gap
    Int? depth_one
    Int? depth_two
    Directory? outdir
    File? o_prefix
    File? ofile_ofile_
  }
  command <<<
    macs2 bdgdiff \
      ~{if defined(tone) then ("--t1 " +  '"' + tone + '"') else ""} \
      ~{if defined(t_two) then ("--t2 " +  '"' + t_two + '"') else ""} \
      ~{if defined(cone) then ("--c1 " +  '"' + cone + '"') else ""} \
      ~{if defined(c_two) then ("--c2 " +  '"' + c_two + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_gap) then ("--max-gap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(depth_one) then ("--depth1 " +  '"' + depth_one + '"') else ""} \
      ~{if defined(depth_two) then ("--depth2 " +  '"' + depth_two + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(o_prefix) then ("--o-prefix " +  '"' + o_prefix + '"') else ""} \
      ~{if defined(ofile_ofile_) then ("-o " +  '"' + ofile_ofile_ + '"') else ""}
  >>>
  parameter_meta {
    tone: "MACS pileup bedGraph for condition 1. Incompatible\\nwith callpeak --SPMR output. REQUIRED"
    t_two: "MACS pileup bedGraph for condition 2. Incompatible\\nwith callpeak --SPMR output. REQUIRED"
    cone: "MACS control lambda bedGraph for condition 1.\\nIncompatible with callpeak --SPMR output. REQUIRED"
    c_two: "MACS control lambda bedGraph for condition 2.\\nIncompatible with callpeak --SPMR output. REQUIRED"
    cut_off: "logLR cutoff. DEFAULT: 3 (likelihood ratio=1000)"
    min_len: "Minimum length of differential region. Try bigger\\nvalue to remove small regions. DEFAULT: 200"
    max_gap: "Maximum gap to merge nearby differential regions.\\nConsider a wider gap for broad marks. Maximum gap\\nshould be smaller than minimum length (-g). DEFAULT:\\n100"
    depth_one: "Sequencing depth (# of non-redundant reads in million)\\nfor condition 1. It will be used together with --d2.\\nSee description for --d2 below for how to assign them.\\nDefault: 1"
    depth_two: "Sequencing depth (# of non-redundant reads in million)\\nfor condition 2. It will be used together with --d1.\\nDEPTH1 and DEPTH2 will be used to calculate scaling\\nfactor for each sample, to down-scale larger sample to\\nthe level of smaller one. For example, while comparing\\n10 million condition 1 and 20 million condition 2, use\\n--d1 10 --d2 20, then pileup value in bedGraph for\\ncondition 2 will be divided by 2. Default: 1"
    outdir: "If specified all output files will be written to that\\ndirectory. Default: the current working directory"
    o_prefix: "Output file prefix. Actual files will be named as\\nPREFIX_cond1.bed, PREFIX_cond2.bed and\\nPREFIX_common.bed. Mutually exclusive with -o/--ofile."
    ofile_ofile_: "OFILE OFILE, --ofile OFILE OFILE OFILE\\nOutput filenames. Must give three arguments in order:\\n1. file for unique regions in condition 1; 2. file for\\nunique regions in condition 2; 3. file for common\\nregions in both conditions. Note: mutually exclusive\\nwith --o-prefix.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_o_prefix = "${in_o_prefix}"
    File out_ofile_ofile_ = "${in_ofile_ofile_}"
  }
}