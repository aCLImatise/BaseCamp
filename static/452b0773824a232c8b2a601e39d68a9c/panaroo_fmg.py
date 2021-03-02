from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Panaroo_Fmg_V0_1_0 = CommandToolBuilder(tool="panaroo_fmg", base_command=["panaroo-fmg"], inputs=[ToolInput(tag="in_tree", input_type=String(optional=True), prefix="--tree", doc=InputDocumentation(doc="A dated phylogeny.")), ToolInput(tag="in_pa", input_type=String(optional=True), prefix="--pa", doc=InputDocumentation(doc="A presence/absence produced by Panaroo.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Name of outputfile.")), ToolInput(tag="in_n_boot", input_type=Int(optional=True), prefix="--nboot", doc=InputDocumentation(doc="The number of sub-sampling bootstrap iterations to")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print additional output")), ToolInput(tag="in_perform_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-t N_CPU, --threads N_CPU"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="Name of outputfile."))], container="quay.io/biocontainers/panaroo:1.2.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Panaroo_Fmg_V0_1_0().translate("wdl")

