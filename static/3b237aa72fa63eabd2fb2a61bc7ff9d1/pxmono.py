from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Pxmono_V0_1_0 = CommandToolBuilder(tool="pxmono", base_command=["pxmono"], inputs=[ToolInput(tag="in_tree_f", input_type=File(optional=True), prefix="--treef", doc=InputDocumentation(doc="input tree file, STDIN otherwise")), ToolInput(tag="in_names", input_type=String(optional=True), prefix="--names", doc=InputDocumentation(doc="names separated by commas (NO SPACES!)")), ToolInput(tag="in_names_f", input_type=File(optional=True), prefix="--namesf", doc=InputDocumentation(doc="names in a file (each on a line)")), ToolInput(tag="in_comp", input_type=Boolean(optional=True), prefix="--comp", doc=InputDocumentation(doc="take the complement (i.e. check monophyly of taxa not in list)")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output tree file, STOUT otherwise")), ToolInput(tag="in_ignore", input_type=Boolean(optional=True), prefix="--ignore", doc=InputDocumentation(doc="ignore missing (default: exit if names are not in the tree)")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output tree file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxmono_V0_1_0().translate("wdl")

