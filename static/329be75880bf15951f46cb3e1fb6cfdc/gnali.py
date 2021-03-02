from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Gnali_V0_1_0 = CommandToolBuilder(tool="gnali", base_command=["gnali"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="File of genes to test. Accepted formats: csv, txt")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Name of output directory. Default: results-ID/")), ToolInput(tag="in_force", input_type=Directory(optional=True), prefix="--force", doc=InputDocumentation(doc="Force existing output folder to be overwritten"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Name of output directory. Default: results-ID/")), ToolOutput(tag="out_force", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Force existing output folder to be overwritten"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gnali_V0_1_0().translate("wdl", allow_empty_container=True)

