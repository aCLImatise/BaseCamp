from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Mmseqs_Addtaxonomy_V0_1_0 = CommandToolBuilder(tool="mmseqs_addtaxonomy", base_command=["mmseqs", "addtaxonomy"], inputs=[ToolInput(tag="in_tax_lineage", input_type=Int(optional=True), prefix="--tax-lineage", doc=InputDocumentation(doc="0: don't show, 1: add all lineage names, 2: add all lineage taxids [0]")), ToolInput(tag="in_lca_ranks", input_type=String(optional=True), prefix="--lca-ranks", doc=InputDocumentation(doc="Add column with specified ranks (',' separated) []")), ToolInput(tag="in_pick_id_from", input_type=Int(optional=True), prefix="--pick-id-from", doc=InputDocumentation(doc="Query 1, Target 2 [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Addtaxonomy_V0_1_0().translate("wdl")

