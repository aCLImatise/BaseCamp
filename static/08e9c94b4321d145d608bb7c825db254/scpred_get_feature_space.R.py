from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Scpred_Get_Feature_Space_R_V0_1_0 = CommandToolBuilder(tool="scpred_get_feature_space.R", base_command=["scpred_get_feature_space.R"], inputs=[ToolInput(tag="in_input_object", input_type=File(optional=True), prefix="--input-object", doc=InputDocumentation(doc="Path to the input object of Seurat class in .rds format")), ToolInput(tag="in_prediction_column", input_type=String(optional=True), prefix="--prediction-column", doc=InputDocumentation(doc="Name of the metadata column that contains cell labels")), ToolInput(tag="in_correction_method", input_type=String(optional=True), prefix="--correction-method", doc=InputDocumentation(doc="Multiple testing correction method. Default: fdr")), ToolInput(tag="in_significance_threshold", input_type=String(optional=True), prefix="--significance-threshold", doc=InputDocumentation(doc="Significance threshold for principal components explaining class identity")), ToolInput(tag="in_reduction_parameter", input_type=String(optional=True), prefix="--reduction-parameter", doc=InputDocumentation(doc="Name of reduction in Seurat objet to be used to determine the feature space. Default: 'pca'")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output-path", doc=InputDocumentation(doc="Path for the modified scPred object in .rds format"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="Path for the modified scPred object in .rds format"))], container="quay.io/biocontainers/scpred-cli:0.1.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scpred_Get_Feature_Space_R_V0_1_0().translate("wdl")

