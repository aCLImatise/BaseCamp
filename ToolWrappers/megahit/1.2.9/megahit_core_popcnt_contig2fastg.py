from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Megahit_Core_Popcnt_Contig2Fastg_V0_1_0 = CommandToolBuilder(tool="megahit_core_popcnt_contig2fastg", base_command=["megahit_core_popcnt", "contig2fastg"], inputs=[ToolInput(tag="in_contig_two_fast_g", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_km_er_size", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_k_km_er_size_dot_contigs_dot_fa", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megahit_Core_Popcnt_Contig2Fastg_V0_1_0().translate("wdl", allow_empty_container=True)

