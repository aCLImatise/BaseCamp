from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String, File

Pmp_Bf_V0_1_0 = CommandToolBuilder(tool="pmp_bf", base_command=["pmp_bf"], inputs=[ToolInput(tag="in_model", input_type=Int(optional=True), prefix="--model", doc=InputDocumentation(doc="|average|jc|k2|f81|f84|hky|tn (default=f81)")), ToolInput(tag="in_pur_pyr", input_type=Float(optional=True), prefix="--pur-pyr", doc=InputDocumentation(doc="(default=1.0)")), ToolInput(tag="in_transition_transversion", input_type=Float(optional=True), prefix="--transition-transversion", doc=InputDocumentation(doc="(default=0.5)")), ToolInput(tag="in_bg", input_type=Float(optional=True), prefix="--bg", doc=InputDocumentation(doc="(default=1.0)")), ToolInput(tag="in_fg", input_type=Float(optional=True), prefix="--fg", doc=InputDocumentation(doc="(default=1.0)")), ToolInput(tag="in_motif", input_type=String(optional=True), prefix="--motif", doc=InputDocumentation(doc="(default=all)")), ToolInput(tag="in_b_file", input_type=File(optional=True), prefix="--bfile", doc=InputDocumentation(doc="(default from motif file)")), ToolInput(tag="in_pseudo_count", input_type=Float(optional=True), prefix="--pseudocount", doc=InputDocumentation(doc="(default=0.1)")), ToolInput(tag="in_pmp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_meme_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pmp_Bf_V0_1_0().translate("wdl", allow_empty_container=True)

