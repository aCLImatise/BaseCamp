version 1.0

task FGAP {
  input {
    Boolean? _draftfile_draft
    Boolean? _datasetsfiles_list
    Boolean? _min_score
    Boolean? _maxevalue_evalue
    Boolean? _minidentity_min
    Boolean? _contigendlength_length
    Boolean? _edgetrimlength_length
    Boolean? _maxremovelength_max
    Boolean? _maxinsertlength_max
    Boolean? _positivegap_enable
    Boolean? _zerogap_enable
    Boolean? _negativegap_enable
    Boolean? _gapchar_base
    Boolean? _blastpath_blast
    Boolean? _blastalignmentparameters_blast
    Boolean? _blastmaxresults_max
    Boolean? _threads_number
    Boolean? _moreoutput_more
    File? _outputprefix_output
  }
  command <<<
    FGAP \
      ~{if (_draftfile_draft) then "-d" else ""} \
      ~{if (_datasetsfiles_list) then "-a" else ""} \
      ~{if (_min_score) then "-s" else ""} \
      ~{if (_maxevalue_evalue) then "-e" else ""} \
      ~{if (_minidentity_min) then "-i" else ""} \
      ~{if (_contigendlength_length) then "-C" else ""} \
      ~{if (_edgetrimlength_length) then "-T" else ""} \
      ~{if (_maxremovelength_max) then "-R" else ""} \
      ~{if (_maxinsertlength_max) then "-I" else ""} \
      ~{if (_positivegap_enable) then "-p" else ""} \
      ~{if (_zerogap_enable) then "-z" else ""} \
      ~{if (_negativegap_enable) then "-g" else ""} \
      ~{if (_gapchar_base) then "-c" else ""} \
      ~{if (_blastpath_blast) then "-b" else ""} \
      ~{if (_blastalignmentparameters_blast) then "-l" else ""} \
      ~{if (_blastmaxresults_max) then "-r" else ""} \
      ~{if (_threads_number) then "-t" else ""} \
      ~{if (_moreoutput_more) then "-m" else ""} \
      ~{if (_outputprefix_output) then "-o" else ""}
  >>>
  parameter_meta {
    _draftfile_draft: "/--draft-file        Draft genome file [fasta format - Ex: 'draft.fasta']"
    _datasetsfiles_list: "/--datasets-files    List of datasets files to close gaps [fasta format - Ex: 'dataset1.fasta,dataset2.fasta']"
    _min_score: "/--min-score         Min Score (raw) to return results from BLAST (integer) - Default: 25"
    _maxevalue_evalue: "/--max-evalue        Max E-Value to return results from BLAST (float) - Default: 1e-7"
    _minidentity_min: "/--min-identity      Min identity (%) to return results from BLAST (integer [0-100]) - Default: 70"
    _contigendlength_length: "/--contig-end-length Length (bp) of contig ends to perform BLAST alignment (integer) - Default: 300"
    _edgetrimlength_length: "/--edge-trim-length  Length of ignored bases (bp) upstream and downstrem of the gap (integer) - Default: 0"
    _maxremovelength_max: "/--max-remove-length Max number of bases (bp) that can be removed (integer) - Default: 500"
    _maxinsertlength_max: "/--max-insert-length Max number of bases (bp) that can be inserted (integer) - Default: 500"
    _positivegap_enable: "/--positive-gap      Enable closing of positive gaps (with insertion) (integer [0-1]) - Default: 1"
    _zerogap_enable: "/--zero-gap          Enable closing of zero gaps (without insert any base) (integer [0-1]) - Default: 0"
    _negativegap_enable: "/--negative-gap      Enable closing of negative gaps (overlapping contig ends) (integer [0-1]) - Default: 0"
    _gapchar_base: "/--gap-char                          Base that represents the gap (char) - Default: 'N'"
    _blastpath_blast: "/--blast-path                        Blast+ package path (only makeblastdb and blastn are needed, version 2.2.28+ or higher) - Default: ''"
    _blastalignmentparameters_blast: "/--blast-alignment-parameters        BLAST alignment parameters (opengap,extendgap,match,mismatch,wordsize) - Default: '1,1,1,-3,15'"
    _blastmaxresults_max: "/--blast-max-results                 Max results from BLAST for each query (integer) - Default: 200"
    _threads_number: "/--threads                           Number of threads (integer) - Default: 1"
    _moreoutput_more: "/--more-output       More output files with gap regions after and before gap closing (integer [0-1]) - Default: 0"
    _outputprefix_output: "/--output-prefix     Output prefix [File or folder - Ex: 'out' or 'out_folder/out' ] - Default: 'output_fgap'"
  }
  output {
    File out_stdout = stdout()
    File out__outputprefix_output = "${in__outputprefix_output}"
  }
}