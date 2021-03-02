from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dlcpar_To_Dlcoal_V0_1_0 = CommandToolBuilder(tool="dlcpar_to_dlcoal", base_command=["dlcpar_to_dlcoal"], inputs=[ToolInput(tag="in_stree", input_type=File(optional=True), prefix="--stree", doc=InputDocumentation(doc="species tree file in newick format")), ToolInput(tag="in_s_map", input_type=String(optional=True), prefix="--smap", doc=InputDocumentation(doc="gene to species map")), ToolInput(tag="in_input_ext", input_type=File(optional=True), prefix="--inputext", doc=InputDocumentation(doc="input file extension (default: '.tree')")), ToolInput(tag="in_output_ext", input_type=File(optional=True), prefix="--outputext", doc=InputDocumentation(doc="output file extension (default: '')")), ToolInput(tag="in_dlc_par_to_dl_coal", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_is", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_utility", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_converting", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_dlc_par", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_reconciliations", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_dl_coal", input_type=String(), position=9, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_ext", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_ext", type_hint=File()), doc=OutputDocumentation(doc="output file extension (default: '')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dlcpar_To_Dlcoal_V0_1_0().translate("wdl", allow_empty_container=True)

