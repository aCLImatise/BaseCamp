from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean

Complete_Locus_V0_1_0 = CommandToolBuilder(tool="complete_locus", base_command=["complete_locus"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Path to input locus file")), ToolInput(tag="in_input_directory", input_type=Directory(optional=True), prefix="--input-directory", doc=InputDocumentation(doc="Path to directory containing locus files")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="Path to output directory")), ToolInput(tag="in_suppress_warnings", input_type=Boolean(optional=True), prefix="--suppress-warnings", doc=InputDocumentation(doc="Suppress warnings"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Path to output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Complete_Locus_V0_1_0().translate("wdl", allow_empty_container=True)

