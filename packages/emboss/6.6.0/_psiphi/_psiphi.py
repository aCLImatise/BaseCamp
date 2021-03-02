from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

_Psiphi_V0_1_0 = CommandToolBuilder(tool="_psiphi", base_command=["_psiphi"], inputs=[ToolInput(tag="in_chain_number", input_type=Boolean(optional=True), prefix="-chainnumber", doc=InputDocumentation(doc="integer    [1] Number of the chain for which torsion\nangles should be calculated (Integer 1 or\nmore)")), ToolInput(tag="in_start_residue_number", input_type=Int(optional=True), prefix="-startresiduenumber", doc=InputDocumentation(doc="[1] First residue in chain for which torsion\nangles should be calculated (Integer 1 or\nmore)")), ToolInput(tag="in_finish_residue_number", input_type=Int(optional=True), prefix="-finishresiduenumber", doc=InputDocumentation(doc="[1] Last residue in chain for which torsion\nangles should be calculated (1 = last\nresidue) (Any integer value)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Psiphi_V0_1_0().translate("wdl", allow_empty_container=True)

