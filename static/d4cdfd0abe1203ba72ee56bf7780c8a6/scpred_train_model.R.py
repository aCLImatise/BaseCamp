from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Scpred_Train_Model_R_V0_1_0 = CommandToolBuilder(tool="scpred_train_model.R", base_command=["scpred_train_model.R"], inputs=[ToolInput(tag="in_input_object", input_type=File(optional=True), prefix="--input-object", doc=InputDocumentation(doc="Path to the input object of scPred or seurat class in .rds format")), ToolInput(tag="in_train_id", input_type=String(optional=True), prefix="--train-id", doc=InputDocumentation(doc="ID of the training dataset (optional)")), ToolInput(tag="in_model", input_type=String(optional=True), prefix="--model", doc=InputDocumentation(doc="Model type used for training. Must be one of the models supported by Caret package.\nDefault: svmRadial")), ToolInput(tag="in_resample_method", input_type=String(optional=True), prefix="--resample-method", doc=InputDocumentation(doc="Resampling method used for model fit evaluation")), ToolInput(tag="in_iter_num", input_type=Int(optional=True), prefix="--iter-num", doc=InputDocumentation(doc="Number of resampling iterations. Default: 5")), ToolInput(tag="in_random_seed", input_type=String(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="Random seed")), ToolInput(tag="in_allow_parallel", input_type=String(optional=True), prefix="--allow-parallel", doc=InputDocumentation(doc="Should parallel processing be allowed? Default: TRUE")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output-path", doc=InputDocumentation(doc="Path for the output scPred object in .rds format")), ToolInput(tag="in_training_results", input_type=File(optional=True), prefix="--training-results", doc=InputDocumentation(doc="Path for training step results object in .rds format")), ToolInput(tag="in_train_probs_plot", input_type=File(optional=True), prefix="--train-probs-plot", doc=InputDocumentation(doc="Path for training probabilities plot in .png format"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="Path for the output scPred object in .rds format"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scpred_Train_Model_R_V0_1_0().translate("wdl", allow_empty_container=True)

