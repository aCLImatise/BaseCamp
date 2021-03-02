from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Make_Fasta_From_Fastg_Py_V0_1_0 = CommandToolBuilder(tool="make_fasta_from_fastg.py", base_command=["make_fasta_from_fastg.py"], inputs=[ToolInput(tag="in_graph", input_type=File(optional=True), prefix="--graph", doc=InputDocumentation(doc="(spades 3.50+) FASTG file to process [recommended:\nbefore_rr.fastg]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file name for FASTA of cycles\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file name for FASTA of cycles\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Fasta_From_Fastg_Py_V0_1_0().translate("wdl", allow_empty_container=True)

