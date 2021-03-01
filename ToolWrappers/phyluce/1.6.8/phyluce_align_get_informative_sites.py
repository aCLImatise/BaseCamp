from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Int

Phyluce_Align_Get_Informative_Sites_V0_1_0 = CommandToolBuilder(tool="phyluce_align_get_informative_sites", base_command=["phyluce_align_get_informative_sites"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing the alignment files")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output filename")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of cores to use.")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output filename"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Get_Informative_Sites_V0_1_0().translate("wdl", allow_empty_container=True)

