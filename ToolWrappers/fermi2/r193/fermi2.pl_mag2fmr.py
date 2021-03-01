from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Fermi2_Pl_Mag2Fmr_V0_1_0 = CommandToolBuilder(tool="fermi2.pl_mag2fmr", base_command=["fermi2.pl", "mag2fmr"], inputs=[ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_fermi_two_do_tpl", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi2_Pl_Mag2Fmr_V0_1_0().translate("wdl", allow_empty_container=True)

