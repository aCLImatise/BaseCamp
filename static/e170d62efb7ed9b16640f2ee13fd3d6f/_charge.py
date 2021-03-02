from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Charge_V0_1_0 = CommandToolBuilder(tool="_charge", base_command=["_charge"], inputs=[ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [5] Window length (Integer 1 or more)")), ToolInput(tag="in_aa_data", input_type=Boolean(optional=True), prefix="-aadata", doc=InputDocumentation(doc="datafile   [Eamino.dat] Amino acids properties and\nmolecular weight data file")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="-plot", doc=InputDocumentation(doc="toggle     [N] Produce graphic"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Charge_V0_1_0().translate("wdl", allow_empty_container=True)

