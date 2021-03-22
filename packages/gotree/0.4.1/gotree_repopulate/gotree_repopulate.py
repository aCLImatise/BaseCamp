from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Gotree_Repopulate_V0_1_0 = CommandToolBuilder(tool="gotree_repopulate", base_command=["gotree", "repopulate"], inputs=[ToolInput(tag="in_id_groups", input_type=File(optional=True), prefix="--id-groups", doc=InputDocumentation(doc="File with groups of identical tips (default 'none')")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input tree (default 'stdin')")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Renamed tree output file (default 'stdout')")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=2) (default 1)")), ToolInput(tag="in_branches_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Example with Tip1,Tip2 :")), ToolInput(tag="in_before", input_type=String(), position=1, doc=InputDocumentation(doc="|   After (if l>0.0)  |  After (if l=0.0)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Renamed tree output file (default 'stdout')"))], container="quay.io/biocontainers/gotree:0.4.1--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Repopulate_V0_1_0().translate("wdl")

