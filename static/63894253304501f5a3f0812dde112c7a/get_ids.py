from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Get_Ids_V0_1_0 = CommandToolBuilder(tool="get_ids", base_command=["get-ids"], inputs=[ToolInput(tag="in_specify_directory_containing", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Specify the directory containing fasta file")), ToolInput(tag="in_specify_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the output file")), ToolInput(tag="in_specify_fasta_file", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Specify fasta file")), ToolInput(tag="in_specify_minimum_length", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Specify minimum length to be incorporated"))], outputs=[ToolOutput(tag="out_specify_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specify_output_file", type_hint=File()), doc=OutputDocumentation(doc="Specify the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Ids_V0_1_0().translate("wdl", allow_empty_container=True)

