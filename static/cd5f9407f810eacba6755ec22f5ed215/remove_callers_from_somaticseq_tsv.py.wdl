version 1.0

task RemoveCallersFromSomaticseqTsvpy {
  input {
    File? in_file
    File? outfile
    String? subtract
  }
  command <<<
    remove_callers_from_somaticseq_tsv_py \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(subtract) then ("-subtract " +  '"' + subtract + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: "input file (default: None)"
    outfile: "input file (default: None)"
    subtract: "[{if_MuTect,if_VarScan2,if_JointSNVMix2,if_SomaticSniper,if_VarDict,MuSE_Tier,if_LoFreq,if_Scalpel,if_Strelka,if_TNscope,if_Platypus} ...], --subtract-callers {if_MuTect,if_VarScan2,if_JointSNVMix2,if_SomaticSniper,if_VarDict,MuSE_Tier,if_LoFreq,if_Scalpel,if_Strelka,if_TNscope,if_Platypus} [{if_MuTect,if_VarScan2,if_JointSNVMix2,if_SomaticSniper,if_VarDict,MuSE_Tier,if_LoFreq,if_Scalpel,if_Strelka,if_TNscope,if_Platypus} ...]\\ncolumns to make nan (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}