from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Chromosomer_Assemble_Fragment_Fasta_V0_1_0 = CommandToolBuilder(tool="chromosomer_assemble_fragment_fasta", base_command=["chromosomer", "assemble", "fragment_fasta"], inputs=[ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_chromosome_r", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_assemble", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_map", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_fragment_fast_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_fast_a", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chromosomer_Assemble_Fragment_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

