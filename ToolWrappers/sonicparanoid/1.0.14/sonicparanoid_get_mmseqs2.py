from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean

Sonicparanoid_Get_Mmseqs2_V0_1_0 = CommandToolBuilder(tool="sonicparanoid_get_mmseqs2", base_command=["sonicparanoid-get-mmseqs2"], inputs=[ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="The directory in which the source files of MMseqs2\nwill be stored.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Output debug information."))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="The directory in which the source files of MMseqs2\nwill be stored."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sonicparanoid_Get_Mmseqs2_V0_1_0().translate("wdl", allow_empty_container=True)

