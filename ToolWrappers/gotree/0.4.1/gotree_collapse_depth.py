from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Gotree_Collapse_Depth_V0_1_0 = CommandToolBuilder(tool="gotree_collapse_depth", base_command=["gotree", "collapse", "depth"], inputs=[ToolInput(tag="in_max_depth", input_type=Int(optional=True), prefix="--max-depth", doc=InputDocumentation(doc="Max Depth cutoff to collapse branches")), ToolInput(tag="in_min_depth", input_type=Int(optional=True), prefix="--min-depth", doc=InputDocumentation(doc="Min depth cutoff to collapse branches")), ToolInput(tag="in_root", input_type=Boolean(optional=True), prefix="--root", doc=InputDocumentation(doc="Applies also to branches connected to the root (may unroot the tree)")), ToolInput(tag="in_tips", input_type=Boolean(optional=True), prefix="--tips", doc=InputDocumentation(doc="Applies also to tips (keeps a 0.0 length tip)")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input tree (default 'stdin')")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Collapsed tree output file (default 'stdout')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=2) (default 1)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Collapsed tree output file (default 'stdout')"))], container="quay.io/biocontainers/gotree:0.4.1--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Collapse_Depth_V0_1_0().translate("wdl")

