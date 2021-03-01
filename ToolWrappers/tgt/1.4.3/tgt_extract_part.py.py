from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Tgt_Extract_Part_Py_V0_1_0 = CommandToolBuilder(tool="tgt_extract_part.py", base_command=["tgt-extract-part.py"], inputs=[ToolInput(tag="in_start_time_extracted", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Start time of the interval to be extracted.")), ToolInput(tag="in_end_time_extracted", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="End time of the interval to be extracted.")), ToolInput(tag="in_path_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Path to the output file. Defaults to the original path with\n_part appended to the filename.\n"))], outputs=[ToolOutput(tag="out_path_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_path_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path to the output file. Defaults to the original path with\n_part appended to the filename.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tgt_Extract_Part_Py_V0_1_0().translate("wdl", allow_empty_container=True)

