#!/usr/bin/env cwl-runner

baseCommand:
- scpred_train_test_split.R
class: CommandLineTool
cwlVersion: v1.0
id: scpred_train_test_split.r
