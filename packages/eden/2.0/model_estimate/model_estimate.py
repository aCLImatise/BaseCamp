from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Model_Estimate_V0_1_0 = CommandToolBuilder(tool="model_estimate", base_command=["model", "estimate"], inputs=[ToolInput(tag="in_positive_input_file", input_type=File(optional=True), prefix="--positive-input-file", doc=InputDocumentation(doc="Path tofile containing input for the positive class.\n(default: None)")), ToolInput(tag="in_negative_input_file", input_type=File(optional=True), prefix="--negative-input-file", doc=InputDocumentation(doc="Path to file containing input for the negative class.\n(default: None)")), ToolInput(tag="in_model_file", input_type=File(optional=True), prefix="--model-file", doc=InputDocumentation(doc="Path to a fit model file. (default: None)")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Path to output directory. (default: out)")), ToolInput(tag="in_cross_validation", input_type=Boolean(optional=True), prefix="--cross-validation", doc=InputDocumentation(doc="If set, report cross validated performance measures.\nThe model's parameters are re-trained in each fold\nkeeping the hyper-parameters of the given model.\n(default: False)\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Path to output directory. (default: out)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Model_Estimate_V0_1_0().translate("wdl", allow_empty_container=True)

