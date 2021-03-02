from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Biscuit_Mergecg_V0_1_0 = CommandToolBuilder(tool="biscuit_mergecg", base_command=["biscuit", "mergecg"], inputs=[ToolInput(tag="in_nomeseq_mode_only", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="NOMe-seq mode, only merge C,G both in HCGD context")), ToolInput(tag="in_minimum_depth_merging", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="minimum depth after merging (0). This applies to the maximum depth\nacross samples.")), ToolInput(tag="in_ref", input_type=String(), position=0, doc=InputDocumentation(doc="fai-indexed fasta")), ToolInput(tag="in_bed", input_type=String(), position=1, doc=InputDocumentation(doc="sorted bed file, starting from column 4,5, we have alternating\nbeta value and coverage for each sample. This is what output from\nbiscuit vcf2bed without -e."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biscuit_Mergecg_V0_1_0().translate("wdl", allow_empty_container=True)

