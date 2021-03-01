from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Falconc_M4Filt_Contained_V0_1_0 = CommandToolBuilder(tool="falconc_m4filt_contained", base_command=["falconc", "m4filt-contained"], inputs=[ToolInput(tag="in__infn_string", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --in-fn=                    string  REQUIRED  Input m4 overlap file")), ToolInput(tag="in__outfn_string", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-fn=                   string  REQUIRED  Output m4 overlap file")), ToolInput(tag="in_lfc", input_type=Boolean(optional=True), prefix="--lfc", doc=InputDocumentation(doc="bool    false     IGNORED (used in\novlp_to_graph)")), ToolInput(tag="in_disable_chime_r_bridge_removal", input_type=Boolean(optional=True), prefix="--disable_chimer_bridge_removal", doc=InputDocumentation(doc="bool    false     IGNORED (used in\novlp_to_graph)")), ToolInput(tag="in_ctg_prefix", input_type=Boolean(optional=True), prefix="--ctg_prefix", doc=InputDocumentation(doc="=                    string  ''        IGNORED (used in\novlp_to_graph)")), ToolInput(tag="in_min_len", input_type=Boolean(optional=True), prefix="--min-len", doc=InputDocumentation(doc="=                       int     400       Minimum read length; reads\nshorter than minLen will be\ndiscarded")), ToolInput(tag="in_min_idt_pct", input_type=Boolean(optional=True), prefix="--min-idt-pct", doc=InputDocumentation(doc="=                   float   96.0      Minimum overlap identity;\nworse overlaps will be\ndiscarded\n")), ToolInput(tag="in_help", input_type=String(), position=0, doc=InputDocumentation(doc="--help-syntax                                      advanced:"))], outputs=[ToolOutput(tag="out__outfn_string", output_type=File(optional=True), selector=InputSelector(input_to_select="in__outfn_string", type_hint=File()), doc=OutputDocumentation(doc="=, --out-fn=                   string  REQUIRED  Output m4 overlap file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_M4Filt_Contained_V0_1_0().translate("wdl", allow_empty_container=True)

