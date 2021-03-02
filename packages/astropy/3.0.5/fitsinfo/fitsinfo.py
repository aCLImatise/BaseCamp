from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Fitsinfo_V0_1_0 = CommandToolBuilder(tool="fitsinfo", base_command=["fitsinfo"], inputs=[ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="Path to one or more FITS files. Wildcards are supported."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fitsinfo_V0_1_0().translate("wdl", allow_empty_container=True)

