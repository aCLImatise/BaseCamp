from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, Float, File

Filtershrimp_Pl_V0_1_0 = CommandToolBuilder(tool="filterShrimp.pl", base_command=["filterShrimp.pl"], inputs=[ToolInput(tag="in_min_score", input_type=Int(optional=True), prefix="--minScore", doc=InputDocumentation(doc="minimal percentage of identity (default 300)")), ToolInput(tag="in_uniq", input_type=Boolean(optional=True), prefix="--uniq", doc=InputDocumentation(doc="take only best match and only, when second best is much worse (default false)")), ToolInput(tag="in_uniq_thresh", input_type=Float(optional=True), prefix="--uniqthresh", doc=InputDocumentation(doc="the best alignment is considered uniquen when the second best has a score at most this much fraction of the best (default 0.9)")), ToolInput(tag="in_best", input_type=Boolean(optional=True), prefix="--best", doc=InputDocumentation(doc="take (all) best alignment(s) if they pass the minScore filter.")), ToolInput(tag="in_common_gene_file", input_type=File(optional=True), prefix="--commongenefile", doc=InputDocumentation(doc="file name in which to write cases where one read maps to several different genes")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="output debugging info (default false)"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtershrimp_Pl_V0_1_0().translate("wdl")

