version 1.0

task Tarchive2amos {
  input {
    File? assembly
    File? trace_dir
    File? file_containing_ranges
    File? file_containing_matepair_information
    File? file_containing_meanstdev_information
    String? start_numbering_messages
    Int? min
    Int? max
    File? qual
  }
  command <<<
    tarchive2amos \
      ~{if defined(assembly) then ("-assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(trace_dir) then ("-tracedir " +  '"' + trace_dir + '"') else ""} \
      ~{if defined(file_containing_ranges) then ("-c " +  '"' + file_containing_ranges + '"') else ""} \
      ~{if defined(file_containing_matepair_information) then ("-m " +  '"' + file_containing_matepair_information + '"') else ""} \
      ~{if defined(file_containing_meanstdev_information) then ("-l " +  '"' + file_containing_meanstdev_information + '"') else ""} \
      ~{if defined(start_numbering_messages) then ("-i " +  '"' + start_numbering_messages + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(qual) then ("-qual " +  '"' + qual + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly: "- XML file containing assembly in assembly archive format\\nhttp://www.ncbi.nlm.nih.gov/Traces/assembly/assmbrowser.cgi\\nusually named ASSEMBLY.xml in the tar-ball downloaded from NCBI"
    trace_dir: "- directory containing the trace information as downloaded\\nfrom the NCBI, either from the assembly archive or through\\na direct query in the trace archive.  This directory must contain\\na file named TRACEINFO.xml as well as one or more subdirs\\ncontaining the trace information for the organism(s) whose\\ntraces are being processed."
    file_containing_ranges: "- file containing clear ranges for the reads.  If this file\\nis provided, any sequence that does not appear in it is\\nexcluded from the output."
    file_containing_matepair_information: "- file containing mate-pair information as specified in the\\nBAMBUS documentation.  This file replaces information\\nprovided in .xml files"
    file_containing_meanstdev_information: "- file containing mean/stdev information for libraries.\\nOverrides .xml input."
    start_numbering_messages: "- start numbering messages with id <id>\\n(useful when appending to a bank)"
    min: "- reads shorter than <minlen> are rejected (default 0)"
    max: "- reads longer than <maxlen> are rejected (default no limit)"
    qual: "- default quality value assigned when no quality file is\\nprovided (default 20)"
  }
  output {
    File out_stdout = stdout()
    File out_file_containing_ranges = "${in_file_containing_ranges}"
  }
}