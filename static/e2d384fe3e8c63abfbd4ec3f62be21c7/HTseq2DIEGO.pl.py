from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Htseq2Diego_Pl_V0_1_0 = CommandToolBuilder(tool="HTseq2DIEGO.pl", base_command=["HTseq2DIEGO.pl"], inputs=[ToolInput(tag="in_file_containing_files", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file containing input files and ids\nid [tab] path.to/file")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name (default:junction_table_dexdas )")), ToolInput(tag="in_usefull_help_message", input_type=File(optional=True), prefix="-h", doc=InputDocumentation(doc="this (usefull) help message"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name (default:junction_table_dexdas )"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htseq2Diego_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

