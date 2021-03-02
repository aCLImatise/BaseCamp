from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, Int

Nw_Gen_V0_1_0 = CommandToolBuilder(tool="nw_gen", base_command=["nw_gen"], inputs=[ToolInput(tag="in_sets_time_limit", input_type=Float(optional=True), prefix="-d", doc=InputDocumentation(doc=": sets the maximum depth (time limit). Default: 3.0\nOnly for time-limited trees.")), ToolInput(tag="in_generate_geometric_tree", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc=": generate a geometric tree instead of a time-limited one.\nEach node has a fixed probability of having 2 children.")), ToolInput(tag="in_sets_length_default", input_type=Float(optional=True), prefix="-l", doc=InputDocumentation(doc=": sets the average branch length (default: 1.0)\nOnly for time-limited trees.")), ToolInput(tag="in_sets_probability_node", input_type=Float(optional=True), prefix="-p", doc=InputDocumentation(doc=": sets the probability of a node having (2) children.\nOnly for geometric trees. WARNING: if > 0.5, the tree will\nprobably grow 'forever'. On the other hand, low values will\nresult in most trees having only a root, as the probability\nthat the root has no children is 1-p, like for every other node.")), ToolInput(tag="in_sets_generators_seeddefault", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc=": sets the pseudorandom number generator's seed\n(default: 0.1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Gen_V0_1_0().translate("wdl", allow_empty_container=True)

