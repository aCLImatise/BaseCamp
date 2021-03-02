from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Slice_Fasta_V0_1_0 = CommandToolBuilder(tool="slice_fasta", base_command=["slice_fasta"], inputs=[ToolInput(tag="in_fast_a_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_name", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_end", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_strand", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fsa:1.15.9--h8b12597_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slice_Fasta_V0_1_0().translate("wdl")

