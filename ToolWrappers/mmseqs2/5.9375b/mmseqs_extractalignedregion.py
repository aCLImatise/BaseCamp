from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Extractalignedregion_V0_1_0 = CommandToolBuilder(tool="mmseqs_extractalignedregion", base_command=["mmseqs", "extractalignedregion"], inputs=[ToolInput(tag="in_extract_mode", input_type=Boolean(optional=True), prefix="--extract-mode", doc=InputDocumentation(doc="2               Query 1, Target 2")), ToolInput(tag="in_no_preload", input_type=Boolean(optional=True), prefix="--no-preload", doc=InputDocumentation(doc="false           Do not preload database")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Extractalignedregion_V0_1_0().translate("wdl", allow_empty_container=True)

