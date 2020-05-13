version 1.0

task SegmentationFoldUtilsFindBoxes {
  input {
    String box1Box1
    String box2Box2
    Boolean forwardForward
    Boolean reverseReverse
  }
  command <<<
    segmentation-fold-utils find-boxes \
      ~{if defined(box1Box1) then ("--box1 " +  '"' + box1Box1 + '"') else ""} \
      ~{if defined(box2Box2) then ("--box2 " +  '"' + box2Box2 + '"') else ""} \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--reverse" false="" reverseReverse}
  >>>
}