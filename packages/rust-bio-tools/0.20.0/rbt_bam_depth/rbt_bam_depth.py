from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Rbt_Bam_Depth_V0_1_0 = CommandToolBuilder(tool="rbt_bam_depth", base_command=["rbt", "bam-depth"], inputs=[ToolInput(tag="in_excl_flags", input_type=Int(optional=True), prefix="--excl-flags", doc=InputDocumentation(doc="Skip reads with mask bits set [UNMAP, SECONDARY, QCFAIL, DUP] [default: 1796]")), ToolInput(tag="in_incl_flags", input_type=Int(optional=True), prefix="--incl-flags", doc=InputDocumentation(doc="Skip reads with mask bits unset [] [default: 0]")), ToolInput(tag="in_max_read_length", input_type=Int(optional=True), prefix="--max-read-length", doc=InputDocumentation(doc="Maximum read length to consider. This affects the speed of the involved pileup. Reads longer than this\nlength can be missed when calculating the depth [default: 1000]")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="--min-mapq", doc=InputDocumentation(doc="Minimum mapping quality [default: 0]"))], outputs=[], container="quay.io/biocontainers/rust-bio-tools:0.20.0--heda7bfa_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Bam_Depth_V0_1_0().translate("wdl")

