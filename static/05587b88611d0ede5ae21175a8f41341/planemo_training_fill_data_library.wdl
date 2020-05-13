version 1.0

task PlanemoTrainingFillDataLibrary {
  input {
    String topicTopicName
    String tutorialTutorialName
    String zenoZenoDoLink
    File dataDataTypes
  }
  command <<<
    planemo training_fill_data_library \
      ~{if defined(topicTopicName) then ("--topic_name " +  '"' + topicTopicName + '"') else ""} \
      ~{if defined(tutorialTutorialName) then ("--tutorial_name " +  '"' + tutorialTutorialName + '"') else ""} \
      ~{if defined(zenoZenoDoLink) then ("--zenodo_link " +  '"' + zenoZenoDoLink + '"') else ""} \
      ~{if defined(dataDataTypes) then ("--datatypes " +  '"' + dataDataTypes + '"') else ""}
  >>>
}