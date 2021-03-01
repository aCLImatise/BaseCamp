from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Gotree_Generate_Balancedtree_V0_1_0 = CommandToolBuilder(tool="gotree_generate_balancedtree", base_command=["gotree", "generate", "balancedtree"], inputs=[ToolInput(tag="in_depth", input_type=Int(optional=True), prefix="--depth", doc=InputDocumentation(doc="Depth of the balanced binary tree (default 3)")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_nb_trees", input_type=Int(optional=True), prefix="--nbtrees", doc=InputDocumentation(doc="Number of trees to generate (default 1)")), ToolInput(tag="in_output", input_type=Int(optional=True), prefix="--output", doc=InputDocumentation(doc="Number of tips of the tree to generate (default 'stdout')")), ToolInput(tag="in_rooted", input_type=Boolean(optional=True), prefix="--rooted", doc=InputDocumentation(doc="Generate rooted trees")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=8) (default 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Generate_Balancedtree_V0_1_0().translate("wdl", allow_empty_container=True)

