from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Kronos_Make_Config_V0_1_0 = CommandToolBuilder(tool="kronos_make_config", base_command=["kronos", "make_config"], inputs=[ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="--output_filename", doc=InputDocumentation(doc="a name for the resultant config file\n")), ToolInput(tag="in_components", input_type=String(), position=0, doc=InputDocumentation(doc="list of component names"))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="a name for the resultant config file\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kronos_Make_Config_V0_1_0().translate("wdl", allow_empty_container=True)

