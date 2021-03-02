from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Editconf_V0_1_0 = CommandToolBuilder(tool="editconf", base_command=["editconf"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_output_gro_path", input_type=File(optional=True), prefix="--output_gro_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_gro_path", input_type=File(optional=True), prefix="--input_gro_path", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_gro_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_gro_path", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Editconf_V0_1_0().translate("wdl", allow_empty_container=True)

