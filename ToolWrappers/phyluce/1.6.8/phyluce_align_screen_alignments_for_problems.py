from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String, File, Int

Phyluce_Align_Screen_Alignments_For_Problems_V0_1_0 = CommandToolBuilder(tool="phyluce_align_screen_alignments_for_problems", base_command=["phyluce_align_screen_alignments_for_problems"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing alignments to be screened.\n(default: None)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the resulting\nalignments. (default: None)")), ToolInput(tag="in_do_not_screen_n", input_type=Boolean(optional=True), prefix="--do-not-screen-n", doc=InputDocumentation(doc="Screen alignments for taxa containing ambiguous (N)\nbases. (default: False)")), ToolInput(tag="in_do_not_screen_x", input_type=Boolean(optional=True), prefix="--do-not-screen-x", doc=InputDocumentation(doc="Screen alignments for taxa containing ambiguous (X)\nbases. (default: False)")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format (default: nexus)")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use. (default: INFO)")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs. (default: None)")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Process alignments in parallel using --cores for\nalignment. This is the number of PHYSICAL CPUs.\n(default: 1)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Screen_Alignments_For_Problems_V0_1_0().translate("wdl", allow_empty_container=True)

