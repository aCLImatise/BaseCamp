from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Dassembler_V0_1_0 = CommandToolBuilder(tool="DAssembler", base_command=["DAssembler"], inputs=[ToolInput(tag="in_max_overlap", input_type=Int(optional=True), prefix="--max_overlap", doc=InputDocumentation(doc="maximum tier overlap for consensus calling [10]")), ToolInput(tag="in_max_mismatch", input_type=Int(optional=True), prefix="--max_mismatch", doc=InputDocumentation(doc="maximum mismatches allowed for consensus calling [2]")), ToolInput(tag="in_min_coverage", input_type=Int(optional=True), prefix="--min_coverage", doc=InputDocumentation(doc="minimum coverage to call a consensus base [2]")), ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read_length", doc=InputDocumentation(doc="read length")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc="fasta-formatted reads file: the first read is used as the seed."))], outputs=[], container="quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dassembler_V0_1_0().translate("wdl")

