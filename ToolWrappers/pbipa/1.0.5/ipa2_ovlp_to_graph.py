from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Ipa2_Ovlp_To_Graph_V0_1_0 = CommandToolBuilder(tool="ipa2_ovlp_to_graph", base_command=["ipa2_ovlp_to_graph"], inputs=[ToolInput(tag="in_overlap_file", input_type=File(optional=True), prefix="--overlap-file", doc=InputDocumentation(doc="a file that contains the overlap information. (default: preads.m4)")), ToolInput(tag="in_lfc", input_type=Boolean(optional=True), prefix="--lfc", doc=InputDocumentation(doc="use local flow constraint method rather than best overlap method to resolve knots in string graph (default: False)")), ToolInput(tag="in_disable_chime_r_bridge_removal", input_type=Boolean(optional=True), prefix="--disable-chimer-bridge-removal", doc=InputDocumentation(doc="disable chimer induced bridge removal (default: False)")), ToolInput(tag="in_ctg_prefix", input_type=String(optional=True), prefix="--ctg-prefix", doc=InputDocumentation(doc="Prefix for contig names. (default: )")), ToolInput(tag="in_haplo_spur", input_type=Boolean(optional=True), prefix="--haplospur", doc=InputDocumentation(doc="Apply the haplospur contig extraction algorithm. (default: False)")), ToolInput(tag="in_depth_cut_off", input_type=Int(optional=True), prefix="--depth-cutoff", doc=InputDocumentation(doc="Depth cutoff threshold (number of nodes) for bundle finding. (default: 48)")), ToolInput(tag="in_width_cut_off", input_type=Int(optional=True), prefix="--width-cutoff", doc=InputDocumentation(doc="Width cutoff threshold (number of nodes) for bundle finding. (default: 16)")), ToolInput(tag="in_length_cut_off", input_type=Int(optional=True), prefix="--length-cutoff", doc=InputDocumentation(doc="Depth cutoff threshold (number of nodes) for bundle finding. (default: 500000)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipa2_Ovlp_To_Graph_V0_1_0().translate("wdl", allow_empty_container=True)

