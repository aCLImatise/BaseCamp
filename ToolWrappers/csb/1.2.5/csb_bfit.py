from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Csb_Bfit_V0_1_0 = CommandToolBuilder(tool="csb_bfit", base_command=["csb-bfit"], inputs=[ToolInput(tag="in_chain_one", input_type=Int(optional=True), prefix="--chain1", doc=InputDocumentation(doc="Chain of the first structure (default=A)")), ToolInput(tag="in_chain_two", input_type=Int(optional=True), prefix="--chain2", doc=InputDocumentation(doc="Chain of the second structure (default=A)")), ToolInput(tag="in_scale_mixture", input_type=String(optional=True), prefix="--scalemixture", doc=InputDocumentation(doc="Scale mixture distribution (default=student)")), ToolInput(tag="in_alignment", input_type=Int(optional=True), prefix="--alignment", doc=InputDocumentation(doc="Alignment in fasta format defining equivalent\npositions Assumes that chain1 is the first sequence of\nthe alignment and chain2 the second sequence")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="file to which the rotated second structure will be\nwritten (default=bfit.pdb)")), ToolInput(tag="in_niter", input_type=Int(optional=True), prefix="--niter", doc=InputDocumentation(doc="Number of optimization steps (default=200)")), ToolInput(tag="in_em", input_type=Boolean(optional=True), prefix="--em", doc=InputDocumentation(doc="Use the EM algorithm for optimsation (default=False)")), ToolInput(tag="in_pdb_one", input_type=Int(), position=0, doc=InputDocumentation(doc="full path to the first structure")), ToolInput(tag="in_pdb_two", input_type=Int(), position=1, doc=InputDocumentation(doc="full path to the second structure"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csb_Bfit_V0_1_0().translate("wdl", allow_empty_container=True)

