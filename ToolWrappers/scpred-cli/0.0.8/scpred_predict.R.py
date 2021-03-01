from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Scpred_Predict_R_V0_1_0 = CommandToolBuilder(tool="scpred_predict.R", base_command=["scpred_predict.R"], inputs=[ToolInput(tag="in_input_object", input_type=File(optional=True), prefix="--input-object", doc=InputDocumentation(doc="Path to the input object of scPred or seurat class in .rds format")), ToolInput(tag="in_pred_data", input_type=File(optional=True), prefix="--pred-data", doc=InputDocumentation(doc="Path to the input prediction matrix in .rds format")), ToolInput(tag="in_test_labels", input_type=File(optional=True), prefix="--test-labels", doc=InputDocumentation(doc="Path to the test labels file for evalutation of model performance in text format")), ToolInput(tag="in_cell_types_column", input_type=File(optional=True), prefix="--cell-types-column", doc=InputDocumentation(doc="Column name of true labels in provided metadata file")), ToolInput(tag="in_threshold_level", input_type=String(optional=True), prefix="--threshold-level", doc=InputDocumentation(doc="Classification threshold value")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output-path", doc=InputDocumentation(doc="Output path for values predicted by the model in text format")), ToolInput(tag="in_plot_path", input_type=File(optional=True), prefix="--plot-path", doc=InputDocumentation(doc="Output path for prediction probabilities histograms in .png format")), ToolInput(tag="in_confusion_table", input_type=File(optional=True), prefix="--confusion-table", doc=InputDocumentation(doc="Output path for confusion table in text format"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="Output path for values predicted by the model in text format")), ToolOutput(tag="out_plot_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_plot_path", type_hint=File()), doc=OutputDocumentation(doc="Output path for prediction probabilities histograms in .png format")), ToolOutput(tag="out_confusion_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_confusion_table", type_hint=File()), doc=OutputDocumentation(doc="Output path for confusion table in text format"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scpred_Predict_R_V0_1_0().translate("wdl", allow_empty_container=True)

