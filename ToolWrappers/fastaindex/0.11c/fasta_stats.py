from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String

Fasta_Stats_V0_1_0 = CommandToolBuilder(tool="fasta_stats", base_command=["fasta_stats"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose")), ToolInput(tag="in_fast_a", input_type=Array(t=String(), optional=True), prefix="--fasta", doc=InputDocumentation(doc="FASTA file(s)")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="output stream    [stdout]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

