from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Gotree_Annotate_V0_1_0 = CommandToolBuilder(tool="gotree_annotate", base_command=["gotree", "annotate"], inputs=[ToolInput(tag="in_comment", input_type=Boolean(optional=True), prefix="--comment", doc=InputDocumentation(doc="Annotations are stored in Newick comment fields")), ToolInput(tag="in_compared", input_type=File(optional=True), prefix="--compared", doc=InputDocumentation(doc="Compared tree file (default 'stdin')")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input tree(s) file (default 'stdin')")), ToolInput(tag="in_map_file", input_type=File(optional=True), prefix="--map-file", doc=InputDocumentation(doc="Name map input file (default 'none')")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Resolved tree(s) output file (default 'stdout')")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=2) (default 1)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Resolved tree(s) output file (default 'stdout')"))], container="quay.io/biocontainers/gotree:0.4.1--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Annotate_V0_1_0().translate("wdl")

