from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fc_Phased_Ovlp_To_Graph_Py_V0_1_0 = CommandToolBuilder(tool="fc_phased_ovlp_to_graph.py", base_command=["fc_phased_ovlp_to_graph.py"], inputs=[ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="minimum length of the reads to be considered for assembling (default: 4000)")), ToolInput(tag="in_min_idt", input_type=Int(optional=True), prefix="--min-idt", doc=InputDocumentation(doc="minimum alignment identity of the reads to be considered for assembling (default: 96)")), ToolInput(tag="in_lfc", input_type=Boolean(optional=True), prefix="--lfc", doc=InputDocumentation(doc="use local flow constraint method rather than best overlap method to resolve knots in string graph (default: False)")), ToolInput(tag="in_c_path", input_type=String(), position=0, doc=InputDocumentation(doc="ctg_paths")), ToolInput(tag="in_sg_edges_list", input_type=String(), position=1, doc=InputDocumentation(doc="utg_data"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Phased_Ovlp_To_Graph_Py_V0_1_0().translate("wdl", allow_empty_container=True)

