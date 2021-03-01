from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Classify_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="classify_fasta.py", base_command=["classify_fasta.py"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="fasta file of the sequences to be classified (default:\nNone)")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output file prefix (default: None)")), ToolInput(tag="in_num_processes", input_type=Int(optional=True), prefix="--num_processes", doc=InputDocumentation(doc="Number of processes to use (default: 8)\n"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output file prefix (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Classify_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

