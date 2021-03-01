from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Csb_Bfite_V0_1_0 = CommandToolBuilder(tool="csb_bfite", base_command=["csb-bfite"], inputs=[ToolInput(tag="in_chain", input_type=String(optional=True), prefix="--chain", doc=InputDocumentation(doc="Chain (default=A)")), ToolInput(tag="in_scale_mixture", input_type=String(optional=True), prefix="--scalemixture", doc=InputDocumentation(doc="Scale mixture distribution (default=student)")), ToolInput(tag="in_alignment", input_type=Int(optional=True), prefix="--alignment", doc=InputDocumentation(doc="Alignment in fasta format defining equivalent\npositions Assumes that chain1 is the first sequence of\nthe alignment and chain2 the second sequence")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="file to which the rotated second structure will be\nwritten (default=bfit.pdb)")), ToolInput(tag="in_niter", input_type=Int(optional=True), prefix="--niter", doc=InputDocumentation(doc="Number of optimization steps (default=200)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csb_Bfite_V0_1_0().translate("wdl", allow_empty_container=True)

