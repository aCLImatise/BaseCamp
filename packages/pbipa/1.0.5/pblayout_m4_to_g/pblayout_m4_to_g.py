from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Pblayout_M4_To_G_V0_1_0 = CommandToolBuilder(tool="pblayout_m4_to_g", base_command=["pblayout", "m4-to-g"], inputs=[ToolInput(tag="in_lfc", input_type=Boolean(optional=True), prefix="--lfc", doc=InputDocumentation(doc="use local flow constraint method rather\nthan best overlap method to resolve\nknots in string graph")), ToolInput(tag="in_disable_chime_r_bridge_removal", input_type=Boolean(optional=True), prefix="--disable-chimer-bridge-removal", doc=InputDocumentation(doc="and do not write chimer_nodes file")), ToolInput(tag="in_ctg_prefix", input_type=Boolean(optional=True), prefix="--ctg-prefix", doc=InputDocumentation(doc="STR  Prefix for contig names.")), ToolInput(tag="in_in_do_tm_four", input_type=Int(), position=0, doc=InputDocumentation(doc="STR  Input M4 or M4F. (default should be")), ToolInput(tag="in_pre_ads_do_tm_four", input_type=Int(), position=1, doc=InputDocumentation(doc="out.g                            STR  (Output Graph: ctg_paths, c_path,"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pblayout_M4_To_G_V0_1_0().translate("wdl", allow_empty_container=True)

