from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tiddit_V0_1_0 = CommandToolBuilder(tool="TIDDIT", base_command=["TIDDIT"], inputs=[ToolInput(tag="in_sv", input_type=Boolean(optional=True), prefix="--sv", doc=InputDocumentation(doc="collect SV signals")), ToolInput(tag="in_cov", input_type=Boolean(optional=True), prefix="--cov", doc=InputDocumentation(doc="select the cov module to analyse the coverage of the genome using bins of a specified size")), ToolInput(tag="in_gc", input_type=Boolean(optional=True), prefix="--gc", doc=InputDocumentation(doc="select the gc module to compute the gc content across the genome using bins of a specified size(accepts a fasta through stdin)")), ToolInput(tag="in_module", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/tiddit:2.12.1--py37h0498b6d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tiddit_V0_1_0().translate("wdl")

