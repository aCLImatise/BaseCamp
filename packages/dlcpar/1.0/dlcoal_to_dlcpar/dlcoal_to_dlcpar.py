from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Dlcoal_To_Dlcpar_V0_1_0 = CommandToolBuilder(tool="dlcoal_to_dlcpar", base_command=["dlcoal_to_dlcpar"], inputs=[ToolInput(tag="in_stree", input_type=File(optional=True), prefix="--stree", doc=InputDocumentation(doc="species tree file in newick format")), ToolInput(tag="in_s_map", input_type=String(optional=True), prefix="--smap", doc=InputDocumentation(doc="gene to species map")), ToolInput(tag="in_input_ext", input_type=File(optional=True), prefix="--inputext", doc=InputDocumentation(doc="input file extension (default: '.coal.tree')")), ToolInput(tag="in_output_ext", input_type=File(optional=True), prefix="--outputext", doc=InputDocumentation(doc="output file extension (default: '.dlcpar')")), ToolInput(tag="in_use_locus_recon", input_type=Boolean(optional=True), prefix="--use-locus-recon", doc=InputDocumentation(doc="if set, use locus recon file rather than MPR")), ToolInput(tag="in_no_delay", input_type=Boolean(optional=True), prefix="--no-delay", doc=InputDocumentation(doc="if set, disallow duplication between speciation and")), ToolInput(tag="in_coalescence", input_type=String(), position=0, doc=InputDocumentation(doc="Information:"))], outputs=[ToolOutput(tag="out_output_ext", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_ext", type_hint=File()), doc=OutputDocumentation(doc="output file extension (default: '.dlcpar')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dlcoal_To_Dlcpar_V0_1_0().translate("wdl", allow_empty_container=True)

