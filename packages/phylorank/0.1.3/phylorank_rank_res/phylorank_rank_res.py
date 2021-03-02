from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phylorank_Rank_Res_V0_1_0 = CommandToolBuilder(tool="phylorank_rank_res", base_command=["phylorank", "rank_res"], inputs=[ToolInput(tag="in_tax_a_file", input_type=File(optional=True), prefix="--taxa_file", doc=InputDocumentation(doc="output file indicating taxa within each resolution\ncategory\n")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="decorated tree")), ToolInput(tag="in_taxonomy_file", input_type=String(), position=1, doc=InputDocumentation(doc="file with taxonomy for extant taxa")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc="output file with resolution of taxa at each rank"))], outputs=[ToolOutput(tag="out_tax_a_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_tax_a_file", type_hint=File()), doc=OutputDocumentation(doc="output file indicating taxa within each resolution\ncategory\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylorank_Rank_Res_V0_1_0().translate("wdl", allow_empty_container=True)

