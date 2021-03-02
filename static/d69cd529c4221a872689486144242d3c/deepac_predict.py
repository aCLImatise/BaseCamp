from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int, Array

Deepac_Predict_V0_1_0 = CommandToolBuilder(tool="deepac_predict", base_command=["deepac", "predict"], inputs=[ToolInput(tag="in_array", input_type=Boolean(optional=True), prefix="--array", doc=InputDocumentation(doc="Use .npy input instead.")), ToolInput(tag="in_sensitive", input_type=Boolean(optional=True), prefix="--sensitive", doc=InputDocumentation(doc="Use the sensitive model.")), ToolInput(tag="in_rapid", input_type=Boolean(optional=True), prefix="--rapid", doc=InputDocumentation(doc="Use the rapid CNN model.")), ToolInput(tag="in_custom", input_type=String(optional=True), prefix="--custom", doc=InputDocumentation(doc="Use the user-supplied, already compiled CUSTOM model.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file path [.npy].")), ToolInput(tag="in_n_cpus", input_type=Int(optional=True), prefix="--n-cpus", doc=InputDocumentation(doc="Number of CPU cores. Default: all.")), ToolInput(tag="in_gpus", input_type=Array(t=String(), optional=True), prefix="--gpus", doc=InputDocumentation(doc="GPU devices to use (comma-separated). Default: all\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file path [.npy]."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Predict_V0_1_0().translate("wdl", allow_empty_container=True)

