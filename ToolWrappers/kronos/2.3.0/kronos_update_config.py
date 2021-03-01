from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Kronos_Update_Config_V0_1_0 = CommandToolBuilder(tool="kronos_update_config", base_command=["kronos", "update_config"], inputs=[ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="--output_filename", doc=InputDocumentation(doc="a name for the output file\n")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="paths to the config files, e.g. update_config\n<old_config.yaml> <new_config.yaml>"))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="a name for the output file\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kronos_Update_Config_V0_1_0().translate("wdl", allow_empty_container=True)

