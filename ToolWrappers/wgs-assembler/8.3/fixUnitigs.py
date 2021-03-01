from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fixunitigs_V0_1_0 = CommandToolBuilder(tool="fixUnitigs", base_command=["fixUnitigs"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="")), ToolInput(tag="in_unit_igs_dot_cgb", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fixed_unit_igs_dot_cgb", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fixunitigs_V0_1_0().translate("wdl", allow_empty_container=True)

