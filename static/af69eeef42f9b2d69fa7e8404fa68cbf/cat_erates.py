from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Cat_Erates_V0_1_0 = CommandToolBuilder(tool="cat_erates", base_command=["cat-erates"], inputs=[ToolInput(tag="in_file_containing_names", input_type=File(optional=True), prefix="-L", doc=InputDocumentation(doc="a file containing names of erate files")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cat_Erates_V0_1_0().translate("wdl", allow_empty_container=True)

