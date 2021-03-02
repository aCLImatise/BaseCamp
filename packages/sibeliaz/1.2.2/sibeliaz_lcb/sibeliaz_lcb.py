from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, File, Int, String

Sibeliaz_Lcb_V0_1_0 = CommandToolBuilder(tool="sibeliaz_lcb", base_command=["sibeliaz-lcb"], inputs=[ToolInput(tag="in_no_seq", input_type=Boolean(optional=True), prefix="--noseq", doc=InputDocumentation(doc="Do not output blocks sequences")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output dir for blocks sequences")), ToolInput(tag="in_graph", input_type=File(optional=True), prefix="--graph", doc=InputDocumentation(doc="(required)  Binary file containing the graph")), ToolInput(tag="in_abundance", input_type=Int(optional=True), prefix="--abundance", doc=InputDocumentation(doc="Max abundance of a junction")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of worker threads")), ToolInput(tag="in_block_size", input_type=Int(optional=True), prefix="--blocksize", doc=InputDocumentation(doc="Minimum block size")), ToolInput(tag="in_branch_size", input_type=Int(optional=True), prefix="--branchsize", doc=InputDocumentation(doc="Maximum branch size")), ToolInput(tag="in_k_value", input_type=String(optional=True), prefix="--kvalue", doc=InputDocumentation(doc="Value of k")), ToolInput(tag="in_integer", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sibeliaz:1.2.2--he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sibeliaz_Lcb_V0_1_0().translate("wdl")

