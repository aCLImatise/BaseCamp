version 1.0

task Soap.coverage {
  input {
    String? cvg
    Boolean? ref_single
    Boolean? input_several_soap_soap
    Boolean? il
    Boolean? il_single
    Boolean? il_soap
    Boolean? results_output_details
    Boolean? depth
    Boolean? depth_single
    Boolean? depth_single_bin
    Boolean? add_n
    Boolean? depth_input
    Boolean? cds_input
    Boolean? plot
    Boolean? cds_plot
    Boolean? cds_detail
    Boolean? window
    Boolean? p
    Boolean? trim
    Boolean? plain
    Boolean? sam
    Boolean? psl_query
    Boolean? psl_sub
    Boolean? maq
    Boolean? m_eight_subject
    Boolean? m_eight_query
    Boolean? mummer_query
    Boolean? ax_to_it_g
    Boolean? ax_to_iq
    Boolean? only_uniq
    Boolean? precise
    Boolean? no_warning
    Boolean? no_calc
    Boolean? only_cover
    Boolean? duplicate
    Boolean? insert_upper
    Boolean? insert_lower
  }
  command <<<
    soap.coverage \
      ~{if defined(cvg) then ("-cvg " +  '"' + cvg + '"') else ""} \
      ~{true="-refsingle" false="" ref_single} \
      ~{true="-i" false="" input_several_soap_soap} \
      ~{true="-il" false="" il} \
      ~{true="-il_single" false="" il_single} \
      ~{true="-il_soap" false="" il_soap} \
      ~{true="-o" false="" results_output_details} \
      ~{true="-depth" false="" depth} \
      ~{true="-depthsingle" false="" depth_single} \
      ~{true="-depthsinglebin" false="" depth_single_bin} \
      ~{true="-addn" false="" add_n} \
      ~{true="-depthinput" false="" depth_input} \
      ~{true="-cdsinput" false="" cds_input} \
      ~{true="-plot" false="" plot} \
      ~{true="-cdsplot" false="" cds_plot} \
      ~{true="-cdsdetail" false="" cds_detail} \
      ~{true="-window" false="" window} \
      ~{true="-p" false="" p} \
      ~{true="-trim" false="" trim} \
      ~{true="-plain" false="" plain} \
      ~{true="-sam" false="" sam} \
      ~{true="-pslquery" false="" psl_query} \
      ~{true="-pslsub" false="" psl_sub} \
      ~{true="-maq" false="" maq} \
      ~{true="-m8subject" false="" m_eight_subject} \
      ~{true="-m8query" false="" m_eight_query} \
      ~{true="-mummerquery" false="" mummer_query} \
      ~{true="-axtoitg" false="" ax_to_it_g} \
      ~{true="-axtoiq" false="" ax_to_iq} \
      ~{true="-onlyuniq" false="" only_uniq} \
      ~{true="-precise" false="" precise} \
      ~{true="-nowarning" false="" no_warning} \
      ~{true="-nocalc" false="" no_calc} \
      ~{true="-onlycover" false="" only_cover} \
      ~{true="-duplicate" false="" duplicate} \
      ~{true="-insertupper" false="" insert_upper} \
      ~{true="-insertlower" false="" insert_lower}
  >>>
  parameter_meta {
    cvg: "Selector for sequencing coverage mode, physical coverage mode or reads tag mode At least and only one should be selected!"
    ref_single: "[filename]   Input reference fasta file used in SOAP"
    input_several_soap_soap: "[soap-file1 soap-file2 ...] Input several soap or soap gziped results by filenames."
    il: "[soap-list]         Input several soap or soap gziped results (absolute path!) with a soap-list file Caution: Only PE aligned results can be used in physical coverage!"
    il_single: "[SE aligned results list]"
    il_soap: "[PE aligned results list]"
    results_output_details: "[file-name]          Results output with details"
    depth: "[directory]      Output coverage of each bp in seperate files, a directory should be given"
    depth_single: "[filename] Output coverage of each bp in a single file (text, fasta like)"
    depth_single_bin: "[fn]    Output coverage of each bp in a single file (Binary mode)"
    add_n: "[filename]        Input N block data for exclusion (marked as 65535 in depthsingle output) Input format: <segment_name> <start (numbering from 1)> <end (exclude the last)>"
    depth_input: "[filename]  Input previous coverage data (Both Text or Binary) for faster accumulation"
    cds_input: "[filename]    Input specific block range for calculating coverage Input format: <segment_name> <start (numbering from 1)> <end (exclude the last)>"
    plot: "[filename] [x-axis lower] [x-axis upper] Output overall distribution of coverage of all segments"
    cds_plot: "[filename] [x-axis lower] [x-axis upper] Output distribution of coverage of specific blocks"
    cds_detail: "[filename] Output coverage of each bp of each specific blocks in a single file"
    window: "[filename] [length] Output coverage averaged in a [length] long window to [filename]"
    p: "[num]                Number of processors [Default:4]"
    trim: "[num]             Exclude [num] bp(s) from head & tail of each segments"
    plain: "Input is a three column list"
    sam: "Input is a standard SAM input file"
    psl_query: "Input is Blat for alculating query coverage."
    psl_sub: "Input is Blat for calculating subject coverage."
    maq: "Input is MAQ output file."
    m_eight_subject: "Input is Blast m8 file for calculating subject coverage (reference should be subject)."
    m_eight_query: "Input is Blast m8 file for calculating query coverage (reference should be query)."
    mummer_query: "[limit]    Input mummer result file for calculating query coverage."
    ax_to_it_g: "Input Blastz axt file for calculating target coverage."
    ax_to_iq: "Input Blastz axt file for calculating query coverage."
    only_uniq: "Use reads those are uniquely mapped (column 4 in soap == 1)."
    precise: "Omit mismatched bp in soap results."
    no_warning: "Cancel all possible warning."
    no_calc: "Do not perform depth calculation."
    only_cover: "Only output 0 or 1 for coverage calculation."
    duplicate: "[num]        Exclude duplications, and gives the percentage of duplication. [num]=readlength"
    insert_upper: "[num]      Insert larger than num will be abandon [Default: 15000]"
    insert_lower: "[num]      Insert shorter thab num will be abandon [Default: 0]"
  }
}