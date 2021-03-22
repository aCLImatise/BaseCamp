from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Gotree_Prune_V0_1_0 = CommandToolBuilder(tool="gotree_prune", base_command=["gotree", "prune"], inputs=[ToolInput(tag="in_comp", input_type=String(optional=True), prefix="--comp", doc=InputDocumentation(doc="Input compared tree  (default 'none')")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output tree (default 'stdout')")), ToolInput(tag="in_random", input_type=Int(optional=True), prefix="--random", doc=InputDocumentation(doc="Number of tips to randomly sample")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="Input reference tree (default 'stdin')")), ToolInput(tag="in_revert", input_type=Boolean(optional=True), prefix="--revert", doc=InputDocumentation(doc="If true, then revert the behavior: will keep only species given in the command line, or keep only the species that are specific to the input tree, or keep only randomly selected taxa")), ToolInput(tag="in_tip_file", input_type=File(optional=True), prefix="--tipfile", doc=InputDocumentation(doc="Tip file (default 'none')")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=2) (default 1)"))], outputs=[], container="quay.io/biocontainers/gotree:0.4.1--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Prune_V0_1_0().translate("wdl")

