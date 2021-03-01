from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Convertmsa_V0_1_0 = CommandToolBuilder(tool="mmseqs_convertmsa", base_command=["mmseqs", "convertmsa"], inputs=[ToolInput(tag="in_identifier_field", input_type=Boolean(optional=True), prefix="--identifier-field", doc=InputDocumentation(doc="1               Field from STOCKHOLM comments for choosing the MSA identifier: 0: ID, 1: AC. If the respective comment does not exist, the name of the first sequence will become the identifier.")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Convertmsa_V0_1_0().translate("wdl", allow_empty_container=True)

