from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Rbt_Vcf_Match_V0_1_0 = CommandToolBuilder(tool="rbt_vcf_match", base_command=["rbt", "vcf-match"], inputs=[ToolInput(tag="in_max_dist", input_type=Int(optional=True), prefix="--max-dist", doc=InputDocumentation(doc="Maximum distance between centres of two indels considered to match [default: 20]")), ToolInput(tag="in_max_len_diff", input_type=Int(optional=True), prefix="--max-len-diff", doc=InputDocumentation(doc="Maximum difference between lengths of two indels [default: 10]"))], outputs=[], container="quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Vcf_Match_V0_1_0().translate("wdl")

