from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Pxtgen_V0_1_0 = CommandToolBuilder(tool="pxtgen", base_command=["pxtgen"], inputs=[ToolInput(tag="in_n_tax", input_type=Int(optional=True), prefix="--ntax", doc=InputDocumentation(doc="number of taxa")), ToolInput(tag="in_rooted", input_type=Boolean(optional=True), prefix="--rooted", doc=InputDocumentation(doc="whether generated trees are rooted (default: false)")), ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="give the number of possible trees for n taxa and exit")), ToolInput(tag="in_label", input_type=String(optional=True), prefix="--label", doc=InputDocumentation(doc="prefix label for taxon names (default: 't')")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxtgen_V0_1_0().translate("wdl")

