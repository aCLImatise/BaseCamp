version 1.0

task Needle {
  input {
    Boolean? gap_open
    Boolean? gap_extend
    Boolean? data_file
    Boolean? end_weight
    Boolean? end_open
    Boolean? end_extend
  }
  command <<<
    _needle \
      ~{if (gap_open) then "-gapopen" else ""} \
      ~{if (gap_extend) then "-gapextend" else ""} \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (end_weight) then "-endweight" else ""} \
      ~{if (end_open) then "-endopen" else ""} \
      ~{if (end_extend) then "-endextend" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gap_open: "float      [10.0 for any sequence] The gap open penalty\\nis the score taken away when a gap is\\ncreated. The best value depends on the\\nchoice of comparison matrix. The default\\nvalue assumes you are using the EBLOSUM62\\nmatrix for protein sequences, and the\\nEDNAFULL matrix for nucleotide sequences.\\n(Floating point number from 1.0 to 100.0)"
    gap_extend: "float      [0.5 for any sequence] The gap extension,\\npenalty is added to the standard gap penalty\\nfor each base or residue in the gap. This\\nis how long gaps are penalized. Usually you\\nwill expect a few long gaps rather than many\\nshort gaps, so the gap extension penalty\\nshould be lower than the gap penalty. An\\nexception is where one or both sequences are\\nsingle reads with possible sequencing\\nerrors in which case you would expect many\\nsingle base gaps. You can get this result by\\nsetting the gap open penalty to zero (or\\nvery low) and using the gap extension\\npenalty to control gap scoring. (Floating\\npoint number from 0.0 to 10.0)"
    data_file: "matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\\nThis is the scoring matrix file used when\\ncomparing sequences. By default it is the\\nfile 'EBLOSUM62' (for proteins) or the file\\n'EDNAFULL' (for nucleic sequences). These\\nfiles are found in the 'data' directory of\\nthe EMBOSS installation."
    end_weight: "boolean    [N] Apply end gap penalties."
    end_open: "float      [10.0 for any sequence] The end gap open\\npenalty is the score taken away when an end\\ngap is created. The best value depends on\\nthe choice of comparison matrix. The default\\nvalue assumes you are using the EBLOSUM62\\nmatrix for protein sequences, and the\\nEDNAFULL matrix for nucleotide sequences.\\n(Floating point number from 1.0 to 100.0)"
    end_extend: "float      [0.5 for any sequence] The end gap\\nextension, penalty is added to the end gap\\npenalty for each base or residue in the end\\ngap. This is how long end gaps are\\npenalized. (Floating point number from 0.0\\nto 10.0)"
  }
  output {
    File out_stdout = stdout()
  }
}