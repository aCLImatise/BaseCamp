from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Fcstxtmergedownsample_Py_V0_1_0 = CommandToolBuilder(tool="FCStxtMergeDownsample.py", base_command=["FCStxtMergeDownsample.py"], inputs=[ToolInput(tag="in_file_location_text", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File location for the text files.")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the output file.")), ToolInput(tag="in_specify_column_keep", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Specify which column to keep in output file")), ToolInput(tag="in_how_much_keep", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="How much of each file to keep\n")), ToolInput(tag="in_fcs_txt_merge", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file.")), ToolOutput(tag="out_specify_column_keep", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specify_column_keep", type_hint=File()), doc=OutputDocumentation(doc="Specify which column to keep in output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fcstxtmergedownsample_Py_V0_1_0().translate("wdl", allow_empty_container=True)

