from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Sbpipe_Move_Datasets_V0_1_0 = CommandToolBuilder(tool="sbpipe_move_datasets", base_command=["sbpipe_move_datasets"], inputs=[ToolInput(tag="in_model_name", input_type=String(optional=True), prefix="--model-name", doc=InputDocumentation(doc="the model name without extension")), ToolInput(tag="in_input_path", input_type=File(optional=True), prefix="--input-path", doc=InputDocumentation(doc="the path containing the input files")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output-path", doc=InputDocumentation(doc="the path to store the output files"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="the path to store the output files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sbpipe_Move_Datasets_V0_1_0().translate("wdl", allow_empty_container=True)

