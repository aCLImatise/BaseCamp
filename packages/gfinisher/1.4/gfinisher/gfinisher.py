from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Gfinisher_V0_1_0 = CommandToolBuilder(tool="gfinisher", base_command=["gfinisher"], inputs=[ToolInput(tag="in_contigsscaffolds_input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="contigs/scaffolds input file")), ToolInput(tag="in_ds", input_type=Boolean(optional=True), prefix="-ds", doc=InputDocumentation(doc="dataset files names (one or more separated by comma)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_verbose_mode", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose mode")), ToolInput(tag="in_ref", input_type=Boolean(optional=True), prefix="-ref", doc=InputDocumentation(doc="genome sequence reference in fasta format"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfinisher_V0_1_0().translate("wdl", allow_empty_container=True)

