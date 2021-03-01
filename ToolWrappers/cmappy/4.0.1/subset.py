from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String, Boolean

Subset_V0_1_0 = CommandToolBuilder(tool="subset", base_command=["subset"], inputs=[ToolInput(tag="in_in_path", input_type=File(optional=True), prefix="--in_path", doc=InputDocumentation(doc="file path to input GCT(x) file (default: None)")), ToolInput(tag="in_rid", input_type=Array(t=String(), optional=True), prefix="--rid", doc=InputDocumentation(doc="filepath to grp file or string array for including\nrows (default: None)")), ToolInput(tag="in_cid", input_type=Array(t=String(), optional=True), prefix="--cid", doc=InputDocumentation(doc="filepath to grp file or string array for including\ncols (default: None)")), ToolInput(tag="in_exclude_rid", input_type=Array(t=String(), optional=True), prefix="--exclude_rid", doc=InputDocumentation(doc="filepath to grp file or string array for excluding\nrows (default: None)")), ToolInput(tag="in_exclude_cid", input_type=Array(t=String(), optional=True), prefix="--exclude_cid", doc=InputDocumentation(doc="filepath to grp file or string array for excluding\ncols (default: None)")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--out_name", doc=InputDocumentation(doc="what to name the output file (default:\nds_subsetted.gct)")), ToolInput(tag="in_out_type", input_type=String(optional=True), prefix="--out_type", doc=InputDocumentation(doc="whether to write output as GCT or GCTx (default: gct)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="whether to increase the # of messages reported\n(default: False)\n"))], outputs=[ToolOutput(tag="out_out_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_name", type_hint=File()), doc=OutputDocumentation(doc="what to name the output file (default:\nds_subsetted.gct)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Subset_V0_1_0().translate("wdl", allow_empty_container=True)

