from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Pblayout_M4_To_G_V0_1_0 = CommandToolBuilder(tool="pblayout_m4_to_g", base_command=["pblayout", "m4-to-g"], inputs=[ToolInput(tag="in_disable_chime_r_bridge_removal", input_type=Boolean(optional=True), prefix="--disable-chimer-bridge-removal", doc=InputDocumentation(doc="), utg_data, utg_data0 (maybe)")), ToolInput(tag="in_lfc", input_type=Boolean(optional=True), prefix="--lfc", doc=InputDocumentation(doc="use local flow constraint method rather than best overlap method to resolve\nknots in string graph")), ToolInput(tag="in_ctg_prefix", input_type=Boolean(optional=True), prefix="--ctg-prefix", doc=InputDocumentation(doc="STR  Prefix for contig names.")), ToolInput(tag="in_in_do_tm_four", input_type=Int(), position=0, doc=InputDocumentation(doc="STR  Input M4 or M4F. (default should be preads.m4")), ToolInput(tag="in_out_dot_g", input_type=String(), position=1, doc=InputDocumentation(doc="STR  (Output Graph: ctg_paths, c_path, sg_edges_list, chimer_nodes (if not"))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pblayout_M4_To_G_V0_1_0().translate("wdl")

