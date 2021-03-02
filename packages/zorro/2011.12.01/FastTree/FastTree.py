from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Fasttree_V0_1_0 = CommandToolBuilder(tool="FastTree", base_command=["FastTree"], inputs=[ToolInput(tag="in_fastest", input_type=Boolean(optional=True), prefix="-fastest", doc=InputDocumentation(doc="-- search the visible set (the top hit for each node) only\nUnlike the original fast neighbor-joining, -fastest updates visible(C)\nafter joining A and B if join(AB,C) is better than join(C,visible(C))")), ToolInput(tag="in_to_pm", input_type=Int(optional=True), prefix="-topm", doc=InputDocumentation(doc="-- set the top-hit list size to parameter*sqrt(N)\nFastTree estimates the top m hits of a leaf from the\ntop 2*m hits of a 'close' neighbor, where close is\ndefined as d(seed,close) < 0.75 * d(seed, hit of rank 2*m),\nand updates the top-hits as joins proceed")), ToolInput(tag="in_close", input_type=Int(optional=True), prefix="-close", doc=InputDocumentation(doc="-- modify the close heuristic, lower is more conservative")), ToolInput(tag="in_refresh", input_type=Int(optional=True), prefix="-refresh", doc=InputDocumentation(doc="-- compare a joined node to all other nodes if its\ntop-hit list is less than 80% of the desired length,\nor if the age of the top-hit list is log2(m) or greater")), ToolInput(tag="in_bio_nj", input_type=Boolean(optional=True), prefix="-bionj", doc=InputDocumentation(doc=": weighted joins as in BIONJ (default)\nFastTree will also weight joins during NNIs")), ToolInput(tag="in_nj", input_type=Boolean(optional=True), prefix="-nj", doc=InputDocumentation(doc=": regular (unweighted) neighbor-joining"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasttree_V0_1_0().translate("wdl", allow_empty_container=True)

