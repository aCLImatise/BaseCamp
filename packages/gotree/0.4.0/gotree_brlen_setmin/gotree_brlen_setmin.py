from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, String

Gotree_Brlen_Setmin_V0_1_0 = CommandToolBuilder(tool="gotree_brlen_setmin", base_command=["gotree", "brlen", "setmin"], inputs=[ToolInput(tag="in_length", input_type=Float(optional=True), prefix="--length", doc=InputDocumentation(doc="Min Length cutoff")), ToolInput(tag="in_output", input_type=Int(optional=True), prefix="--output", doc=InputDocumentation(doc="Min length output tree file (default 'stdout')")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input tree (default 'stdin')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=8) (default 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Brlen_Setmin_V0_1_0().translate("wdl", allow_empty_container=True)

