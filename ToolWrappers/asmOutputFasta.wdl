version 1.0

task AsmOutputFasta {
  input {
    Boolean? write_files_named
    Boolean? not_dump_unitigs
    Boolean? not_dump_degenerates
    Boolean? not_dump_contigs
    Boolean? not_dump_scaffolds
    Int? dump_only_unitigs
  }
  command <<<
    asmOutputFasta \
      ~{if (write_files_named) then "-p" else ""} \
      ~{if (not_dump_unitigs) then "-U" else ""} \
      ~{if (not_dump_degenerates) then "-D" else ""} \
      ~{if (not_dump_contigs) then "-C" else ""} \
      ~{if (not_dump_scaffolds) then "-S" else ""} \
      ~{if defined(dump_only_unitigs) then ("-n " +  '"' + dump_only_unitigs + '"') else ""}
  >>>
  parameter_meta {
    write_files_named: "write files named 'prefix.XXX.TYPE', etc.\\nXXX =  type of object\\nutg - unitig\\ndeg - degenerate\\nctg - contig\\nscf - scaffold\\nTYPE = type of sequence\\nfasta - acgt bases\\nqv    - Celera encoded quality values\\nqual  - NCBI encoded quality values"
    not_dump_unitigs: "do NOT dump unitigs"
    not_dump_degenerates: "do NOT dump degenerates"
    not_dump_contigs: "do NOT dump contigs"
    not_dump_scaffolds: "do NOT dump scaffolds"
    dump_only_unitigs: "dump only unitigs with at least nf reads\\nin them.  Default is 0 (dump all unitigs).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}