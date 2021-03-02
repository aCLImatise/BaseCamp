from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Glam2Format_V0_1_0 = CommandToolBuilder(tool="glam2format", base_command=["glam2format"], inputs=[ToolInput(tag="in_output_file_stdout", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output file (stdout)")), ToolInput(tag="in_make_compact_alignment", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": make a compact alignment")), ToolInput(tag="in_sequence_file_flanking", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": sequence file for flanking sequences"))], outputs=[ToolOutput(tag="out_output_file_stdout", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_stdout", type_hint=File()), doc=OutputDocumentation(doc=": output file (stdout)"))], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Glam2Format_V0_1_0().translate("wdl")

