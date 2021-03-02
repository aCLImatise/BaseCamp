from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Gotree_Compare_Tips_V0_1_0 = CommandToolBuilder(tool="gotree_compare_tips", base_command=["gotree", "compare", "tips"], inputs=[ToolInput(tag="in_priority_over_f", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="priority over -f")), ToolInput(tag="in_tip_file", input_type=File(optional=True), prefix="--tipfile", doc=InputDocumentation(doc="Tip File (Optional) (default 'none')")), ToolInput(tag="in_compared", input_type=File(optional=True), prefix="--compared", doc=InputDocumentation(doc="Compared trees input file (default 'none')")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_ref_tree", input_type=File(optional=True), prefix="--reftree", doc=InputDocumentation(doc="Reference tree input file (default 'stdin')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=8) (default 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Compare_Tips_V0_1_0().translate("wdl", allow_empty_container=True)

