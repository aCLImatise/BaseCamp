from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Kneaddata_Read_Count_Table_V0_1_0 = CommandToolBuilder(tool="kneaddata_read_count_table", base_command=["kneaddata_read_count_table"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="the input folder with kneaddata log files")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="the output file to write"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="the output file to write"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kneaddata_Read_Count_Table_V0_1_0().translate("wdl", allow_empty_container=True)

