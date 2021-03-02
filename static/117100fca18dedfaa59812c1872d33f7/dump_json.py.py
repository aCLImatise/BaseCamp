from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Dump_Json_Py_V0_1_0 = CommandToolBuilder(tool="dump_json.py", base_command=["dump_json.py"], inputs=[ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out_file", doc=InputDocumentation(doc="Output JSON file to this file location (default: None)")), ToolInput(tag="in_no_params", input_type=Boolean(optional=True), prefix="--no-params", doc=InputDocumentation(doc="Output parameters as well as model structure (Default:\n--params) (default: True)\n")), ToolInput(tag="in_model", input_type=String(), position=0, doc=InputDocumentation(doc="Model file to read from"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="Output JSON file to this file location (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dump_Json_Py_V0_1_0().translate("wdl", allow_empty_container=True)

