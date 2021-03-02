from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pre_Tophat_Pl_V0_1_0 = CommandToolBuilder(tool="pre_tophat.pl", base_command=["pre_tophat.pl"], inputs=[ToolInput(tag="in_file_containing_files", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="file containing input files and ids\nid [tab] path.to/file")), ToolInput(tag="in_diegoformated_annotation_file", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="DIEGO-formated annotation file")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name (default:junction_tophat_DIEGO )")), ToolInput(tag="in_usefull_help_message", input_type=File(optional=True), prefix="-h", doc=InputDocumentation(doc="this (usefull) help message"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name (default:junction_tophat_DIEGO )"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pre_Tophat_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

