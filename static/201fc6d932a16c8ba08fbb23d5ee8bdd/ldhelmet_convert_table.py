from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Ldhelmet_Convert_Table_V0_1_0 = CommandToolBuilder(tool="ldhelmet_convert_table", base_command=["ldhelmet", "convert_table"], inputs=[ToolInput(tag="in__display_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --version ]       Display version.")), ToolInput(tag="in_input_table", input_type=String(optional=True), prefix="--input_table", doc=InputDocumentation(doc="LDhat style table to be converted.")), ToolInput(tag="in_output_table", input_type=File(optional=True), prefix="--output_table", doc=InputDocumentation(doc="Name for output file.")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config_file", doc=InputDocumentation(doc="(Optional) File with configs.  This is only necessary\nif you have missing data.\n"))], outputs=[ToolOutput(tag="out_output_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_table", type_hint=File()), doc=OutputDocumentation(doc="Name for output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ldhelmet_Convert_Table_V0_1_0().translate("wdl", allow_empty_container=True)

