from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Pore_C_Refgenome_Virtual_Digest_V0_1_0 = CommandToolBuilder(tool="pore_c_refgenome_virtual_digest", base_command=["pore_c", "refgenome", "virtual-digest"], inputs=[ToolInput(tag="in_digest_type", input_type=Boolean(optional=True), prefix="--digest-type", doc=InputDocumentation(doc="[enzyme|regex|bin]\nThe type of digest you want to do")), ToolInput(tag="in_n_workers", input_type=Int(optional=True), prefix="--n_workers", doc=InputDocumentation(doc="The number of dask_workers to use  [default:\n1]")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cut_on", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_prefix", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Refgenome_Virtual_Digest_V0_1_0().translate("wdl")

