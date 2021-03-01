from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Syco_V0_1_0 = CommandToolBuilder(tool="_syco", base_command=["_syco"], inputs=[ToolInput(tag="in_c_file", input_type=Boolean(optional=True), prefix="-cfile", doc=InputDocumentation(doc="codon      Codon usage file")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [30] Averaging window (Any integer value)")), ToolInput(tag="in_uncommon", input_type=Boolean(optional=True), prefix="-uncommon", doc=InputDocumentation(doc="boolean    [N] Show common codon usage")), ToolInput(tag="in_minimum", input_type=Boolean(optional=True), prefix="-minimum", doc=InputDocumentation(doc="float      [.15] Minimum value for a common codon\n(Number from 0.000 to 0.990)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Syco_V0_1_0().translate("wdl", allow_empty_container=True)

