from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Gotree_Compare_Trees_V0_1_0 = CommandToolBuilder(tool="gotree_compare_trees", base_command=["gotree", "compare", "trees"], inputs=[ToolInput(tag="in_binary", input_type=Boolean(optional=True), prefix="--binary", doc=InputDocumentation(doc="If true, then just print true (identical tree) or false (different tree) for each compared tree")), ToolInput(tag="in_tips", input_type=Boolean(optional=True), prefix="--tips", doc=InputDocumentation(doc="Include tips in the comparison")), ToolInput(tag="in_compared", input_type=File(optional=True), prefix="--compared", doc=InputDocumentation(doc="Compared trees input file (default 'none')")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_ref_tree", input_type=File(optional=True), prefix="--reftree", doc=InputDocumentation(doc="Reference tree input file (default 'stdin')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=8) (default 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Compare_Trees_V0_1_0().translate("wdl", allow_empty_container=True)

