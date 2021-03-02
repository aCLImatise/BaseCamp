from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fclique_V0_1_0 = CommandToolBuilder(tool="fclique", base_command=["fclique"], inputs=[ToolInput(tag="in_anc_file", input_type=Boolean(optional=True), prefix="-ancfile", doc=InputDocumentation(doc="properties Phylip ancestral states file (optional)")), ToolInput(tag="in_factor_file", input_type=Boolean(optional=True), prefix="-factorfile", doc=InputDocumentation(doc="properties Phylip multistate factors file (optional)")), ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Phylip weights file (optional)")), ToolInput(tag="in_cli_qm_in", input_type=Boolean(optional=True), prefix="-cliqmin", doc=InputDocumentation(doc="integer    [0] Minimum clique size (Integer 0 or more)")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_print_comp", input_type=Boolean(optional=True), prefix="-printcomp", doc=InputDocumentation(doc="boolean    [N] Print out compatibility matrix")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fclique_V0_1_0().translate("wdl", allow_empty_container=True)

