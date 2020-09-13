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
    Boolean? determine_similaritydifferences_alignmentvia
    Boolean? _verbose_output
  }
  command <<<
    ExpaRNA \
      ~{if (minmal_size_epm) then "-s" else ""} \
      ~{if (determines_maximal_number) then "-n" else ""} \
      ~{if (initial_epm_score) then "-t" else ""} \
      ~{if (not_ignore_gaps) then "-g" else ""} \
      ~{if (write_output_dir) then "-d" else ""} \
      ~{if (write_lcsepm_alignment) then "-o" else ""} \
      ~{if (write_lcsepm_constraint) then "-i" else ""} \
      ~{if (write_lcsepm_single) then "-e" else ""} \
      ~{if (write_epms_file) then "-a" else ""} \
      ~{if (do_not_save) then "-p" else ""} \
      ~{if (determine_similaritydifferences_alignmentvia) then "-A" else ""} \
      ~{if (_verbose_output) then "-v" else ""}
  >>>
  parameter_meta {
    minmal_size_epm: "#   : # minmal size of an EPM (gamma)\\n2 is default and returns all EPMs with at least 2 nucleotides"
    determines_maximal_number: "#   : # determines the maximal number of returned EPMs\\n0 is default an returns all EPMs\\n1 is the largest EPM and so on..."
    initial_epm_score: "#   : 1: initial EPM score = EPM size (default)\\n: 2: initial EPM score = (EPM size)^2 (prefers larger patterns in LCS-EPM)"
    not_ignore_gaps: ": Do NOT ignore gaps in input sequences"
    write_output_dir: "#   : write all output to dir <#>"
    write_lcsepm_alignment: ": write LCS-EPM into file 'LCSEPM_align.aln' as alignment"
    write_lcsepm_constraint: ": write LCS-EPM into file 'LCSEPM_LocARNA_input.fa' as constraint input for LocARNA"
    write_lcsepm_single: ": write LCS-EPM into file 'LCSEPM.epm' as single EPMs"
    write_epms_file: ": write all EPMs into file 'allEPM.epm' (depends on -s/ -n)"
    do_not_save: ": DO NOT save LCS-EPM as colored postscript file"
    determine_similaritydifferences_alignmentvia: ": determine similarity/differences of LCS-EPM with reference alignment\\nvia two colored postscript files"
    _verbose_output: ": verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}