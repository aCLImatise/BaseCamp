from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Esl_Alirev_Msafile_V0_1_0 = CommandToolBuilder(tool="esl_alirev_msafile", base_command=["esl-alirev", "msafile"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Alirev_Msafile_V0_1_0().translate("wdl", allow_empty_container=True)

