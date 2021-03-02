from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Annotate_Partitions_Py_V0_1_0 = CommandToolBuilder(tool="annotate_partitions.py", base_command=["annotate-partitions.py"], inputs=[ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="print citation information")), ToolInput(tag="in_k_size", input_type=Int(optional=True), prefix="--ksize", doc=InputDocumentation(doc="k-mer size (default: 32) (default: 32)")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite output file if it exists (default: False)")), ToolInput(tag="in_graph_base", input_type=String(), position=0, doc=InputDocumentation(doc="basename for input and output files")), ToolInput(tag="in_input_sequence_filename", input_type=String(), position=1, doc=InputDocumentation(doc="input FAST[AQ] sequences to annotate."))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output file if it exists (default: False)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Annotate_Partitions_Py_V0_1_0().translate("wdl", allow_empty_container=True)

