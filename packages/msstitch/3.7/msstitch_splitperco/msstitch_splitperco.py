from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Array, String

Msstitch_Splitperco_V0_1_0 = CommandToolBuilder(tool="msstitch_splitperco", base_command=["msstitch", "splitperco"], inputs=[ToolInput(tag="in_input_file_format", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file of {} format")), ToolInput(tag="in_directory_to_output", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Directory to output in")), ToolInput(tag="in_prot_headers", input_type=Array(t=String(), optional=True), prefix="--protheaders", doc=InputDocumentation(doc="Specify protein FASTA headers to split on. Multiple\nheaders of the same split-type can be grouped with\nsemicolons. E.g. --protheaders 'ENSP;sp\nPSEUDOGEN;ncRNA' would split into ENSP/swissprot\npeptides and pseudogenes/non-coding RNA peptides.\n"))], outputs=[ToolOutput(tag="out_directory_to_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_to_output", type_hint=File()), doc=OutputDocumentation(doc="Directory to output in"))], container="quay.io/biocontainers/msstitch:3.7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msstitch_Splitperco_V0_1_0().translate("wdl")

