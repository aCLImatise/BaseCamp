from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bamtools_Index_V0_1_0 = CommandToolBuilder(tool="bamtools_index", base_command=["bamtools", "index"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file [stdin]")), ToolInput(tag="in_bti", input_type=Boolean(optional=True), prefix="-bti", doc=InputDocumentation(doc="create (non-standard) BamTools\nindex file (*.bti). Default behavior is to\ncreate standard BAM index (*.bai)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_Index_V0_1_0().translate("wdl", allow_empty_container=True)

