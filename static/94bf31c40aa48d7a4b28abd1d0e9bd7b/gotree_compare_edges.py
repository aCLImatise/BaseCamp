from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Gotree_Compare_Edges_V0_1_0 = CommandToolBuilder(tool="gotree_compare_edges", base_command=["gotree", "compare", "edges"], inputs=[ToolInput(tag="in_moved_tax_a", input_type=Boolean(optional=True), prefix="--moved-taxa", doc=InputDocumentation(doc="only if --transfer-dist is given: Then display, for each branch, taxa that must be moved")), ToolInput(tag="in_transfer_dist", input_type=Boolean(optional=True), prefix="--transfer-dist", doc=InputDocumentation(doc="If transfer dist must be computed for each edge")), ToolInput(tag="in_compared", input_type=File(optional=True), prefix="--compared", doc=InputDocumentation(doc="Compared trees input file (default 'none')")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_ref_tree", input_type=File(optional=True), prefix="--reftree", doc=InputDocumentation(doc="Reference tree input file (default 'stdin')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=2) (default 1)"))], outputs=[], container="quay.io/biocontainers/gotree:0.4.1--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Compare_Edges_V0_1_0().translate("wdl")

