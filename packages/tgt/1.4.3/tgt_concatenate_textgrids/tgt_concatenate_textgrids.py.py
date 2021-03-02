from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean

Tgt_Concatenate_Textgrids_Py_V0_1_0 = CommandToolBuilder(tool="tgt_concatenate_textgrids.py", base_command=["tgt-concatenate-textgrids.py"], inputs=[ToolInput(tag="in_input_files", input_type=Array(t=String(), optional=True), prefix="--input-files", doc=InputDocumentation(doc="Space-separated list of paths to TextGrid files in the\norder they should be concatenated.")), ToolInput(tag="in_output_files", input_type=File(optional=True), prefix="--output-files", doc=InputDocumentation(doc="Path to the resulting file.")), ToolInput(tag="in_encoding", input_type=File(optional=True), prefix="--encoding", doc=InputDocumentation(doc="File encoding (defaults to UTF-8).")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="TextGrid format: short, long (defaults to short)")), ToolInput(tag="in_absolute_time", input_type=Boolean(optional=True), prefix="--absolute-time", doc=InputDocumentation(doc="Interpret start and end times of annotations as\nabsolute.\n"))], outputs=[ToolOutput(tag="out_output_files", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_files", type_hint=File()), doc=OutputDocumentation(doc="Path to the resulting file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tgt_Concatenate_Textgrids_Py_V0_1_0().translate("wdl", allow_empty_container=True)

