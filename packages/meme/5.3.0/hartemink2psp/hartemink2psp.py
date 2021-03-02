from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float, Boolean

Hartemink2Psp_V0_1_0 = CommandToolBuilder(tool="hartemink2psp", base_command=["hartemink2psp"], inputs=[ToolInput(tag="in_mod", input_type=String(optional=True), prefix="-mod", doc=InputDocumentation(doc="|zoops|tcm   create MEME prior for given model\ndefault: zoops")), ToolInput(tag="in_epsilon", input_type=Float(optional=True), prefix="-epsilon", doc=InputDocumentation(doc="use epsilon value to rescale scores\nfrom [0..1] to [epsilon..1-epsilon]\nbefore converting to MEME priors\ndefault: 1e-200")), ToolInput(tag="in_rev_comp", input_type=Boolean(optional=True), prefix="-revcomp", doc=InputDocumentation(doc="double-stranded Hartemink prior\ndefault: single-stranded")), ToolInput(tag="in_width", input_type=String(optional=True), prefix="-width", doc=InputDocumentation(doc="motif width used to construct prior"))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hartemink2Psp_V0_1_0().translate("wdl")

