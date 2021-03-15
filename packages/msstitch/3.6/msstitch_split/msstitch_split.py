from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int

Msstitch_Split_V0_1_0 = CommandToolBuilder(tool="msstitch_split", base_command=["msstitch", "split"], inputs=[ToolInput(tag="in_input_file_format", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file of {} format")), ToolInput(tag="in_directory_to_output", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Directory to output in")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_split_col", input_type=Int(optional=True), prefix="--splitcol", doc=InputDocumentation(doc="Either a column number to split a PSM table on, or\n'TD', 'bioset' for splitting on target/decoy or\nbiological sample set columns (resulting from msstitch\nperco2psm or msstitch psmtable. First column is number\n1.\n"))], outputs=[ToolOutput(tag="out_directory_to_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_to_output", type_hint=File()), doc=OutputDocumentation(doc="Directory to output in")), ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container="quay.io/biocontainers/msstitch:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msstitch_Split_V0_1_0().translate("wdl")

