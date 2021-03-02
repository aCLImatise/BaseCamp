from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Papaa_External_Sample_Pred_Targene_Classifier_Py_V0_1_0 = CommandToolBuilder(tool="papaa_external_sample_pred_targene_classifier.py", base_command=["papaa_external_sample_pred_targene_classifier.py"], inputs=[ToolInput(tag="in_classifier_summary", input_type=File(optional=True), prefix="--classifier_summary", doc=InputDocumentation(doc="location of classifier_summary file")), ToolInput(tag="in_expression_file", input_type=File(optional=True), prefix="--expression_file", doc=InputDocumentation(doc="path for external sample expression data\nfile[fpkm/rlog/vlog")), ToolInput(tag="in_status_sign", input_type=Int(optional=True), prefix="--status_sign", doc=InputDocumentation(doc="assigned tumor [1] or normal sample status[-1]")), ToolInput(tag="in_figure_one", input_type=Int(optional=True), prefix="--figure1", doc=InputDocumentation(doc="Path to save to figure 1")), ToolInput(tag="in_figure_two", input_type=Int(optional=True), prefix="--figure2", doc=InputDocumentation(doc="Path to save to figure 2"))], outputs=[], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_External_Sample_Pred_Targene_Classifier_Py_V0_1_0().translate("wdl")

