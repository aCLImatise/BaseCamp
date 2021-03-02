from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Mwfilter_V0_1_0 = CommandToolBuilder(tool="_mwfilter", base_command=["_mwfilter"], inputs=[ToolInput(tag="in_tolerance", input_type=Boolean(optional=True), prefix="-tolerance", doc=InputDocumentation(doc="float      [50.0] Ppm tolerance (Any numeric value)")), ToolInput(tag="in_show_del", input_type=Boolean(optional=True), prefix="-showdel", doc=InputDocumentation(doc="boolean    [N] Output deleted mwts")), ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="datafile   [Emwfilter.dat] Molecular weight standards\ndata file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Mwfilter_V0_1_0().translate("wdl", allow_empty_container=True)

