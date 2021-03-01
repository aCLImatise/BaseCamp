from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Menecof_V0_1_0 = CommandToolBuilder(tool="menecof", base_command=["menecof"], inputs=[ToolInput(tag="in_draft_net", input_type=String(optional=True), prefix="--draftnet", doc=InputDocumentation(doc="metabolic network in SBML format")), ToolInput(tag="in_seeds", input_type=String(optional=True), prefix="--seeds", doc=InputDocumentation(doc="seeds in SBML format")), ToolInput(tag="in_targets", input_type=String(optional=True), prefix="--targets", doc=InputDocumentation(doc="targets in SBML format")), ToolInput(tag="in_cofactors", input_type=File(optional=True), prefix="--cofactors", doc=InputDocumentation(doc="cofactors, in one-per-line text file format")), ToolInput(tag="in_suffix", input_type=String(optional=True), prefix="--suffix", doc=InputDocumentation(doc="suffix to be added to the compounds of the database.\nIt can be the suffix for the cytosolic compartment or\nexternal one. Cytosolic one is prefered to ensure the\nimpact of the added cofactors. Default = None")), ToolInput(tag="in_weight", input_type=Boolean(optional=True), prefix="--weight", doc=InputDocumentation(doc="call this option if cofactors are weighted according\nto their occurrence frequency in database. If so,\ncofactors file must be tabulated with per line\ncompound' 'occurrence")), ToolInput(tag="in_enumerate", input_type=Boolean(optional=True), prefix="--enumerate", doc=InputDocumentation(doc="enumerates all cofactors solutions"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Menecof_V0_1_0().translate("wdl", allow_empty_container=True)

