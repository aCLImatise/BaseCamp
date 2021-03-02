from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Slice_Fasta_Gff_V0_1_0 = CommandToolBuilder(tool="slice_fasta_gff", base_command=["slice_fasta_gff"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="only look at features of particular type")), ToolInput(tag="in_slice_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fsa:1.15.9--h8b12597_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slice_Fasta_Gff_V0_1_0().translate("wdl")

