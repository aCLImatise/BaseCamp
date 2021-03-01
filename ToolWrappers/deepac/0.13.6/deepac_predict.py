from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int, Array

Deepac_Predict_V0_1_0 = CommandToolBuilder(tool="deepac_predict", base_command=["deepac", "predict"], inputs=[ToolInput(tag="in_array", input_type=Boolean(optional=True), prefix="--array", doc=InputDocumentation(doc="Use .npy input instead.")), ToolInput(tag="in_sensitive", input_type=Boolean(optional=True), prefix="--sensitive", doc=InputDocumentation(doc="Use the sensitive model.")), ToolInput(tag="in_rapid", input_type=Boolean(optional=True), prefix="--rapid", doc=InputDocumentation(doc="Use the rapid CNN model.")), ToolInput(tag="in_custom", input_type=String(optional=True), prefix="--custom", doc=InputDocumentation(doc="Use the user-supplied, already compiled CUSTOM model.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file path [.npy].")), ToolInput(tag="in_n_cpus", input_type=Int(optional=True), prefix="--n-cpus", doc=InputDocumentation(doc="Number of CPU cores. Default: all.")), ToolInput(tag="in_gpus", input_type=Array(t=String(), optional=True), prefix="--gpus", doc=InputDocumentation(doc="GPU devices to use (comma-separated). Default: all")), ToolInput(tag="in_rc_check", input_type=Boolean(optional=True), prefix="--rc-check", doc=InputDocumentation(doc="Check RC-constraint compliance (requires .npy input).")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="--batch-size", doc=InputDocumentation(doc="Batch size.")), ToolInput(tag="in_plot_kind", input_type=String(optional=True), prefix="--plot-kind", doc=InputDocumentation(doc="Plot kind for the RC-constraint compliance check.")), ToolInput(tag="in_alpha", input_type=String(optional=True), prefix="--alpha", doc=InputDocumentation(doc="Alpha value for the RC-constraint compliance check")), ToolInput(tag="in_plot_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--replicates REPLICATES"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file path [.npy]."))], container="quay.io/biocontainers/deepac:0.13.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Predict_V0_1_0().translate("wdl")

