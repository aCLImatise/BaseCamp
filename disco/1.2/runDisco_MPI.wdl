version 1.0

task RunDiscoMPI.sh {
  input {
    Boolean insIns
    Boolean in1In1
    Boolean in2In2
    Boolean inpInp
    Boolean dD
    Boolean oO
    Boolean mM
    Boolean npNp
    Boolean nN
    Boolean obgObg
    Boolean osgOsg
    Boolean rmaRma
    Boolean pP
    Boolean p2P2
    Boolean p3P3
  }
  command <<<
    runDisco-MPI.sh \
      ~{true="-inS" false="" insIns} \
      ~{true="-in1" false="" in1In1} \
      ~{true="-in2" false="" in2In2} \
      ~{true="-inP" false="" inpInp} \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-m" false="" mM} \
      ~{true="-np" false="" npNp} \
      ~{true="-n" false="" nN} \
      ~{true="-obg" false="" obgObg} \
      ~{true="-osg" false="" osgOsg} \
      ~{true="-rma" false="" rmaRma} \
      ~{true="-p" false="" pP} \
      ~{true="-p2" false="" p2P2} \
      ~{true="-p3" false="" p3P3}
  >>>
}