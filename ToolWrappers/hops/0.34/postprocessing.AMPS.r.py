from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean

Postprocessing_Amps_R_V0_1_0 = CommandToolBuilder(tool="postprocessing.AMPS.r", base_command=["postprocessing.AMPS.r"], inputs=[ToolInput(tag="in_rmaexdotoutdotfld", input_type=Directory(optional=True), prefix="--rmaex.out.fld", doc=InputDocumentation(doc="MALTextract output folder.")), ToolInput(tag="in_malte_x_dot_filter", input_type=Boolean(optional=True), prefix="--maltex.filter", doc=InputDocumentation(doc="MALTextract filter mode: <default,def_anc>. This script is not designed for 'scan' output. Default: <def_anc>.")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="Max number of cores used.")), ToolInput(tag="in_node_dot_list", input_type=Boolean(optional=True), prefix="--node.list", doc=InputDocumentation(doc="List (\n separated) of nodes to be reported on (aka input species/node list used for MALTextract).")), ToolInput(tag="in_heat_map_dot_json", input_type=Boolean(optional=True), prefix="--heatmap.json", doc=InputDocumentation(doc="Optional exporting of heatmap data in json format."))], outputs=[ToolOutput(tag="out_rmaexdotoutdotfld", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_rmaexdotoutdotfld", type_hint=File()), doc=OutputDocumentation(doc="MALTextract output folder."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Postprocessing_Amps_R_V0_1_0().translate("wdl", allow_empty_container=True)

