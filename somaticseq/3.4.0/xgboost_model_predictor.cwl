#!/usr/bin/env cwl-runner

baseCommand:
- xgboost_model_predictor.R
class: CommandLineTool
cwlVersion: v1.0
id: xgboost_model_predictor.r
