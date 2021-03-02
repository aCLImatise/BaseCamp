from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Scpred_Eigen_Decomp_R_V0_1_0 = CommandToolBuilder(tool="scpred_eigen_decomp.R", base_command=["scpred_eigen_decomp.R"], inputs=[ToolInput(tag="in_training_matrix", input_type=File(optional=True), prefix="--training-matrix", doc=InputDocumentation(doc="Path to the training matrix in .rds format")), ToolInput(tag="in_log_transform", input_type=String(optional=True), prefix="--log-transform", doc=InputDocumentation(doc="Should log-transform be performed on the matrix? Default: TRUE")), ToolInput(tag="in_training_labels", input_type=File(optional=True), prefix="--training-labels", doc=InputDocumentation(doc="Path to the training labels (metadata) in text format")), ToolInput(tag="in_principal_comps", input_type=Int(optional=True), prefix="--principal-comps", doc=InputDocumentation(doc="Number of pricipal components for eigenvalue decomposition")), ToolInput(tag="in_random_seed", input_type=Int(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="Seed for random number generator")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output-path", doc=InputDocumentation(doc="Output path for the scPred object in .rds format"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="Output path for the scPred object in .rds format"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scpred_Eigen_Decomp_R_V0_1_0().translate("wdl", allow_empty_container=True)

