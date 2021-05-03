from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Spacepharer_Summarizeresults_V0_1_0 = CommandToolBuilder(tool="spacepharer_summarizeresults", base_command=["spacepharer", "summarizeresults"], inputs=[ToolInput(tag="in_fmt", input_type=Int(optional=True), prefix="--fmt", doc=InputDocumentation(doc="0: short (only matches)\n1: long (matches and hits)\n2: long with nucleotide alignment [1]")), ToolInput(tag="in_lca_ranks", input_type=String(optional=True), prefix="--lca-ranks", doc=InputDocumentation(doc="Add column with specified ranks (',' separated) []")), ToolInput(tag="in_tax_lineage", input_type=Int(optional=True), prefix="--tax-lineage", doc=InputDocumentation(doc="0: don't show, 1: add all lineage names, 2: add all lineage taxids [0]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/spacepharer:5.c2e680a--h95f258a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spacepharer_Summarizeresults_V0_1_0().translate("wdl")

