from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Boolean, String

Phyluce_Align_Format_Nexus_Files_For_Raxml_V0_1_0 = CommandToolBuilder(tool="phyluce_align_format_nexus_files_for_raxml", base_command=["phyluce_align_format_nexus_files_for_raxml"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing alignments to concatenate\n(NEXUS-ONLY). (default: None)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output file for the concatenated phylip data\n(default: None)")), ToolInput(tag="in_nexus", input_type=Boolean(optional=True), prefix="--nexus", doc=InputDocumentation(doc="Export as NEXUS format (default: False)")), ToolInput(tag="in_charsets", input_type=Boolean(optional=True), prefix="--charsets", doc=InputDocumentation(doc="Add charsets to phylip file (default: False)")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use. (default: INFO)")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs. (default: None)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output file for the concatenated phylip data\n(default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Format_Nexus_Files_For_Raxml_V0_1_0().translate("wdl", allow_empty_container=True)

