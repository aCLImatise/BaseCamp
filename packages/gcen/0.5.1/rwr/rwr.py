from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float

Rwr_V0_1_0 = CommandToolBuilder(tool="rwr", base_command=["rwr"], inputs=[ToolInput(tag="in_network", input_type=File(optional=True), prefix="--network", doc=InputDocumentation(doc="restart probability (default: 0.5)")), ToolInput(tag="in_prob", input_type=Int(optional=True), prefix="--prob", doc=InputDocumentation(doc="probability cutoff (defalut: 0.01)")), ToolInput(tag="in_directed_network", input_type=File(optional=True), prefix="--directed_network", doc=InputDocumentation(doc="input network is directed (defalut: the input network is undirected)")), ToolInput(tag="in_weighted_network", input_type=Float(optional=True), prefix="--weighted_network", doc=InputDocumentation(doc="edge weights of network will be considered (defalut: all edge weights of network are set to 1.0)")), ToolInput(tag="in_weighted_gene", input_type=Float(optional=True), prefix="--weighted_gene", doc=InputDocumentation(doc="weights of seed genes will be considered (defalut: all weights of seed genes are set to 1.0)"))], outputs=[ToolOutput(tag="out_directed_network", output_type=File(optional=True), selector=InputSelector(input_to_select="in_directed_network", type_hint=File()), doc=OutputDocumentation(doc="input network is directed (defalut: the input network is undirected)"))], container="quay.io/biocontainers/gcen:0.5.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rwr_V0_1_0().translate("wdl")

