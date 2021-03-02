from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Prophex_Klcp_V0_1_0 = CommandToolBuilder(tool="prophex_klcp", base_command=["prophex", "klcp"], inputs=[ToolInput(tag="in_length_of_kmer", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="length of k-mer")), ToolInput(tag="in_construct_klcp_sa", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="construct k-LCP and SA in parallel")), ToolInput(tag="in_sampling_distance_sa", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="sampling distance for SA")), ToolInput(tag="in_idx_base", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prophex_Klcp_V0_1_0().translate("wdl", allow_empty_container=True)

