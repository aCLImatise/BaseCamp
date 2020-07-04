version 1.0

task ExpaRNA {
  input {
    Boolean? minmal_size_epm
    Boolean? determines_maximal_number
    Boolean? initial_epm_score
    Boolean? not_ignore_gaps
    Boolean? write_output_dir
    Boolean? write_lcsepm_alignment
    Boolean? write_lcsepm_constraint
    Boolean? write_lcsepm_single
    Boolean? write_epms_file
    Boolean? do_not_save
    Boolean? determine_similaritydifferences_lcsepm
    Boolean? _verbose_output
  }
  command <<<
    ExpaRNA \
      ~{true="-s" false="" minmal_size_epm} \
      ~{true="-n" false="" determines_maximal_number} \
      ~{true="-t" false="" initial_epm_score} \
      ~{true="-g" false="" not_ignore_gaps} \
      ~{true="-d" false="" write_output_dir} \
      ~{true="-o" false="" write_lcsepm_alignment} \
      ~{true="-i" false="" write_lcsepm_constraint} \
      ~{true="-e" false="" write_lcsepm_single} \
      ~{true="-a" false="" write_epms_file} \
      ~{true="-p" false="" do_not_save} \
      ~{true="-A" false="" determine_similaritydifferences_lcsepm} \
      ~{true="-v" false="" _verbose_output}
  >>>
  parameter_meta {
    minmal_size_epm: "#   : # minmal size of an EPM (gamma) 2 is default and returns all EPMs with at least 2 nucleotides"
    determines_maximal_number: "#   : # determines the maximal number of returned EPMs 0 is default an returns all EPMs 1 is the largest EPM and so on..."
    initial_epm_score: "#   : 1: initial EPM score = EPM size (default) : 2: initial EPM score = (EPM size)^2 (prefers larger patterns in LCS-EPM)"
    not_ignore_gaps: ": Do NOT ignore gaps in input sequences"
    write_output_dir: "#   : write all output to dir <#>"
    write_lcsepm_alignment: ": write LCS-EPM into file 'LCSEPM_align.aln' as alignment"
    write_lcsepm_constraint: ": write LCS-EPM into file 'LCSEPM_LocARNA_input.fa' as constraint input for LocARNA"
    write_lcsepm_single: ": write LCS-EPM into file 'LCSEPM.epm' as single EPMs"
    write_epms_file: ": write all EPMs into file 'allEPM.epm' (depends on -s/ -n)"
    do_not_save: ": DO NOT save LCS-EPM as colored postscript file"
    determine_similaritydifferences_lcsepm: ": determine similarity/differences of LCS-EPM with reference alignment via two colored postscript files"
    _verbose_output: ": verbose output"
  }
}