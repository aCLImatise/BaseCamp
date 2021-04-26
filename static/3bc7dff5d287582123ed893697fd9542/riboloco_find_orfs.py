from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Directory

Riboloco_Find_Orfs_V0_1_0 = CommandToolBuilder(tool="riboloco_find_orfs", base_command=["riboloco_find_orfs"], inputs=[ToolInput(tag="in_fast_a", input_type=String(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Transciptome fasta - can be generated with\nriboloco_convert_gff")), ToolInput(tag="in_info", input_type=File(optional=True), prefix="--info", doc=InputDocumentation(doc="A info file with transcript details - can also be\ngenerated with riboloco_convert_gff")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output_directory", doc=InputDocumentation(doc="The directory to save outputs.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file\n")), ToolInput(tag="in_optional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="The directory to save outputs.")), ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file\n"))], container="quay.io/biocontainers/riboloco:0.3.9--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboloco_Find_Orfs_V0_1_0().translate("wdl")

