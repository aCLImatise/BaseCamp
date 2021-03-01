version 1.0

task Soapcoverage {
  input {
    String? cvg
    Boolean? ref_single
    Boolean? input_several_soap_soap_gziped_results_filenames
    Boolean? il
    Boolean? il_single
    Boolean? il_soap
    File? results_output_details
    Directory? depth
    File? depth_single
    File? depth_single_bin
    Boolean? add_n
    Boolean? depth_input
    Boolean? cds_input
    File? plot
    File? cds_plot
    File? cds_detail
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
    Boolean? sp
    Boolean? pe_support
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
    soap_coverage \
      ~{if defined(cvg) then ("-cvg " +  '"' + cvg + '"') else ""} \
      ~{if (ref_single) then "-refsingle" else ""} \
      ~{if (input_several_soap_soap_gziped_results_filenames) then "-i" else ""} \
      ~{if (il) then "-il" else ""} \
      ~{if (il_single) then "-il_single" else ""} \
      ~{if (il_soap) then "-il_soap" else ""} \
      ~{if (results_output_details) then "-o" else ""} \
      ~{if (depth) then "-depth" else ""} \
      ~{if (depth_single) then "-depthsingle" else ""} \
      ~{if (depth_single_bin) then "-depthsinglebin" else ""} \
      ~{if (add_n) then "-addn" else ""} \
      ~{if (depth_input) then "-depthinput" else ""} \
      ~{if (cds_input) then "-cdsinput" else ""} \
      ~{if (plot) then "-plot" else ""} \
      ~{if (cds_plot) then "-cdsplot" else ""} \
      ~{if (cds_detail) then "-cdsdetail" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (trim) then "-trim" else ""} \
      ~{if (plain) then "-plain" else ""} \
      ~{if (sam) then "-sam" else ""} \
      ~{if (psl_query) then "-pslquery" else ""} \
      ~{if (psl_sub) then "-pslsub" else ""} \
      ~{if (maq) then "-maq" else ""} \
      ~{if (m_eight_subject) then "-m8subject" else ""} \
      ~{if (m_eight_query) then "-m8query" else ""} \
      ~{if (mummer_query) then "-mummerquery" else ""} \
      ~{if (ax_to_it_g) then "-axtoitg" else ""} \
      ~{if (ax_to_iq) then "-axtoiq" else ""} \
      ~{if (sp) then "-sp" else ""} \
      ~{if (pe_support) then "-pesupport" else ""} \
      ~{if (only_uniq) then "-onlyuniq" else ""} \
      ~{if (precise) then "-precise" else ""} \
      ~{if (no_warning) then "-nowarning" else ""} \
      ~{if (no_calc) then "-nocalc" else ""} \
      ~{if (only_cover) then "-onlycover" else ""} \
      ~{if (duplicate) then "-duplicate" else ""} \
      ~{if (insert_upper) then "-insertupper" else ""} \
      ~{if (insert_lower) then "-insertlower" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cvg: "Selector for sequencing coverage mode, physical coverage mode or reads tag mode\\nAt least and only one should be selected!"
    ref_single: "[filename]   Input reference fasta file used in SOAP"
    input_several_soap_soap_gziped_results_filenames: "[soap-file1 soap-file2 ...]\\nInput several soap or soap gziped results by filenames."
    il: "[soap-list]         Input several soap or soap gziped results (absolute path!) with a soap-list file\\nCaution: Only PE aligned results can be used in physical coverage!"
    il_single: "[SE aligned results list]"
    il_soap: "[PE aligned results list]"
    results_output_details: "[file-name]          Results output with details"
    depth: "[directory]      Output coverage of each bp in seperate files, a directory should be given"
    depth_single: "[filename] Output coverage of each bp in a single file (text, fasta like)"
    depth_single_bin: "[fn]    Output coverage of each bp in a single file (Binary mode)"
    add_n: "[filename]        Input N block data for exclusion (marked as 65535 in depthsingle output)\\nInput format: <segment_name> <start (numbering from 1)> <end (exclude the last)>"
    depth_input: "[filename]  Input previous coverage data (Both Text or Binary) for faster accumulation"
    cds_input: "[filename]    Input specific block range for calculating coverage\\nInput format: <segment_name> <start (numbering from 1)> <end (exclude the last)>"
    plot: "[filename] [x-axis lower] [x-axis upper]\\nOutput overall distribution of coverage of all segments"
    cds_plot: "[filename] [x-axis lower] [x-axis upper]\\nOutput distribution of coverage of specific blocks"
    cds_detail: "[filename]\\nOutput coverage of each bp of each specific blocks in a single file"
    window: "[filename] [length]\\nOutput coverage averaged in a [length] long window to [filename]"
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
    sp: "[filename_in] [filename_out]\\nOutput S/P ratio data for post processing.\\nColumn:\\nref    start    end    name"
    pe_support: "[filename_in] [filename_out]\\nOutput pair-end reads on specific areas.\\nColumn:\\nref    start    end    name"
    only_uniq: "Use reads those are uniquely mapped (column 4 in soap == 1)."
    precise: "Omit mismatched bp in soap results."
    no_warning: "Cancel all possible warning."
    no_calc: "Do not perform depth calculation."
    only_cover: "Only output 0 or 1 for coverage calculation."
    duplicate: "[num]        Exclude duplications, and gives the percentage of duplication. [num]=readlength"
    insert_upper: "[num]      Insert larger than num will be abandon [Default: 15000]"
    insert_lower: "[num]      Insert shorter thab num will be abandon [Default: 0]"
  }
  output {
    File out_stdout = stdout()
    File out_results_output_details = "${in_results_output_details}"
    Directory out_depth = "${in_depth}"
    File out_depth_single = "${in_depth_single}"
    File out_depth_single_bin = "${in_depth_single_bin}"
    File out_plot = "${in_plot}"
    File out_cds_plot = "${in_cds_plot}"
    File out_cds_detail = "${in_cds_detail}"
  }
}