from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Iep_V0_1_0 = CommandToolBuilder(tool="_iep", base_command=["_iep"], inputs=[ToolInput(tag="in_amino", input_type=Boolean(optional=True), prefix="-amino", doc=InputDocumentation(doc="integer    [1] Number of N-termini (Integer 0 or more)")), ToolInput(tag="in_carboxyl", input_type=Boolean(optional=True), prefix="-carboxyl", doc=InputDocumentation(doc="integer    [1] Number of C-termini (Integer 0 or more)")), ToolInput(tag="in_lysine_modified", input_type=Boolean(optional=True), prefix="-lysinemodified", doc=InputDocumentation(doc="integer    [0] Number of modified lysines (Integer 0 or\nmore)")), ToolInput(tag="in_disulphide_s", input_type=Boolean(optional=True), prefix="-disulphides", doc=InputDocumentation(doc="integer    [0] Number of disulphide bridges (Integer 0\nor more)")), ToolInput(tag="in_pk_data", input_type=Boolean(optional=True), prefix="-pkdata", doc=InputDocumentation(doc="datafile   [Epk.dat] Values of pKa for amino acids")), ToolInput(tag="in_step", input_type=Boolean(optional=True), prefix="-step", doc=InputDocumentation(doc="float      [.5] Step value for pH (Number from 0.010 to\n1.000)")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="-plot", doc=InputDocumentation(doc="toggle     [N] Plot charge vs pH"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Iep_V0_1_0().translate("wdl", allow_empty_container=True)

