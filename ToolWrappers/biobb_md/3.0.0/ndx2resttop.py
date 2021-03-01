from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Ndx2Resttop_V0_1_0 = CommandToolBuilder(tool="ndx2resttop", base_command=["ndx2resttop"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_output_top_zip_path", input_type=File(optional=True), prefix="--output_top_zip_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_top_zip_path", input_type=File(optional=True), prefix="--input_top_zip_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_ndx_path", input_type=String(optional=True), prefix="--input_ndx_path", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_top_zip_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_top_zip_path", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ndx2Resttop_V0_1_0().translate("wdl", allow_empty_container=True)

