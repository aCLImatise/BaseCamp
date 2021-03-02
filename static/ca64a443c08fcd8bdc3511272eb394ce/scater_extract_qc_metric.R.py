from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Scater_Extract_Qc_Metric_R_V0_1_0 = CommandToolBuilder(tool="scater_extract_qc_metric.R", base_command=["scater-extract-qc-metric.R"], inputs=[ToolInput(tag="in_input_object_file", input_type=File(optional=True), prefix="--input-object-file", doc=InputDocumentation(doc="singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared.")), ToolInput(tag="in_metric", input_type=String(optional=True), prefix="--metric", doc=InputDocumentation(doc="Metric name.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Output file name, will be comma-separated cell,value."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file name, will be comma-separated cell,value."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scater_Extract_Qc_Metric_R_V0_1_0().translate("wdl", allow_empty_container=True)

