from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Seqhax_Filter_V0_1_0 = CommandToolBuilder(tool="seqhax_filter", base_command=["seqhax", "filter"], inputs=[ToolInput(tag="in_minimum_length_read", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Minimum length of each read. [default 1]")), ToolInput(tag="in_output_fasta_qualities", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Output as fasta (no qualities)")), ToolInput(tag="in_paired_mode_reads", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Paired mode: reads are kept/discared in pairs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqhax_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

