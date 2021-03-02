from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Chira_Collapse_Py_V0_1_0 = CommandToolBuilder(tool="chira_collapse.py", base_command=["chira_collapse.py"], inputs=[ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="Input fastq file (default: None)")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Output fasta file (default: None)")), ToolInput(tag="in_umi_len", input_type=Int(optional=True), prefix="--umi_len", doc=InputDocumentation(doc="Length of the UMI, if present.It is trimmed from the\n5' end of each read and appended to the tag id\n(default: 0)"))], outputs=[ToolOutput(tag="out_fast_a", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fast_a", type_hint=File()), doc=OutputDocumentation(doc="Output fasta file (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chira_Collapse_Py_V0_1_0().translate("wdl", allow_empty_container=True)

