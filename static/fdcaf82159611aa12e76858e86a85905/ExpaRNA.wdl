version 1.0

task ExpaRNA {
  input {
    Boolean? minmal_size_epm
    Boolean? determines_maximal_number
    Boolean? initial_epm_score
    Boolean? ignore_gaps_input
    Boolean? write_output_dir
    Boolean? write_file_alignment
    Boolean? write_file_constraint
    Boolean? write_file_single
    Boolean? write_epms_file
    Boolean? save_colored_postscript
    Boolean? determine_similaritydifferences_reference
    Boolean? _verbose_output
  }
  command <<<
    ExpaRNA \
      ~{if (minmal_size_epm) then "-s" else ""} \
      ~{if (determines_maximal_number) then "-n" else ""} \
      ~{if (initial_epm_score) then "-t" else ""} \
      ~{if (ignore_gaps_input) then "-g" else ""} \
      ~{if (write_output_dir) then "-d" else ""} \
      ~{if (write_file_alignment) then "-o" else ""} \
      ~{if (write_file_constraint) then "-i" else ""} \
      ~{if (write_file_single) then "-e" else ""} \
      ~{if (write_epms_file) then "-a" else ""} \
      ~{if (save_colored_postscript) then "-p" else ""} \
      ~{if (determine_similaritydifferences_reference) then "-A" else ""} \
      ~{if (_verbose_output) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minmal_size_epm: "#   : # minmal size of an EPM (gamma)\\n2 is default and returns all EPMs with at least 2 nucleotides"
    determines_maximal_number: "#   : # determines the maximal number of returned EPMs\\n0 is default an returns all EPMs\\n1 is the largest EPM and so on..."
    initial_epm_score: "#   : 1: initial EPM score = EPM size (default)\\n: 2: initial EPM score = (EPM size)^2 (prefers larger patterns in LCS-EPM)"
    ignore_gaps_input: ": Do NOT ignore gaps in input sequences"
    write_output_dir: "#   : write all output to dir <#>"
    write_file_alignment: ": write LCS-EPM into file 'LCSEPM_align.aln' as alignment"
    write_file_constraint: ": write LCS-EPM into file 'LCSEPM_LocARNA_input.fa' as constraint input for LocARNA"
    write_file_single: ": write LCS-EPM into file 'LCSEPM.epm' as single EPMs"
    write_epms_file: ": write all EPMs into file 'allEPM.epm' (depends on -s/ -n)"
    save_colored_postscript: ": DO NOT save LCS-EPM as colored postscript file"
    determine_similaritydifferences_reference: ": determine similarity/differences of LCS-EPM with reference alignment\\nvia two colored postscript files"
    _verbose_output: ": verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}