from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Gfa2Fasta_Py_V0_1_0 = CommandToolBuilder(tool="gfa2fasta.py", base_command=["gfa2fasta.py"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="GFA 1.0 file (format: 'xxx.gfa')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output directory for saving the FASTA file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output directory for saving the FASTA file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfa2Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

