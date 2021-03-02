from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Wcslint_V0_1_0 = CommandToolBuilder(tool="wcslint", base_command=["wcslint"], inputs=[ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="Path to FITS file to check"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wcslint_V0_1_0().translate("wdl", allow_empty_container=True)

