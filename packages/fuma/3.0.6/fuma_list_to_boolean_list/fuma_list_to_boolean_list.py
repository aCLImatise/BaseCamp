from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Fuma_List_To_Boolean_List_V0_1_0 = CommandToolBuilder(tool="fuma_list_to_boolean_list", base_command=["fuma-list-to-boolean-list"], inputs=[ToolInput(tag="in_false_value", input_type=File(optional=True), prefix="--false_value", doc=InputDocumentation(doc="output filename; '-' for stdout"))], outputs=[ToolOutput(tag="out_false_value", output_type=File(optional=True), selector=InputSelector(input_to_select="in_false_value", type_hint=File()), doc=OutputDocumentation(doc="output filename; '-' for stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fuma_List_To_Boolean_List_V0_1_0().translate("wdl", allow_empty_container=True)

