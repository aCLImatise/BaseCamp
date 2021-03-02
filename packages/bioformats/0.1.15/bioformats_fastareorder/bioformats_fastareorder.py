from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bioformats_Fastareorder_V0_1_0 = CommandToolBuilder(tool="bioformats_fastareorder", base_command=["bioformats", "fastareorder"], inputs=[ToolInput(tag="in_ignore_missing", input_type=Boolean(optional=True), prefix="--ignore_missing", doc=InputDocumentation(doc="ignore sequences in the specified order file that are\nmissing in the input FASTA file\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="a FASTA file of sequences to reorder")), ToolInput(tag="in_order_file", input_type=String(), position=1, doc=InputDocumentation(doc="a file with the sequence order")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="an output FASTA file of reordered sequences"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Fastareorder_V0_1_0().translate("wdl", allow_empty_container=True)

