from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Phd2Afg_V0_1_0 = CommandToolBuilder(tool="phd2afg", base_command=["phd2afg"], inputs=[ToolInput(tag="in_directory_where_located", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="directory where phd files are located")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="name of the output file")), ToolInput(tag="in_optional_file_containing_clipping", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="optional: file containing clipping coordinates")), ToolInput(tag="in_optional_file_containing_info", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="optional: file containing mate-pair info in Bambus .mates format"))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="name of the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phd2Afg_V0_1_0().translate("wdl", allow_empty_container=True)

