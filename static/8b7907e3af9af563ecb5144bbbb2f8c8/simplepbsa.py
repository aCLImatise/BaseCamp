from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Simplepbsa_V0_1_0 = CommandToolBuilder(tool="simplepbsa", base_command=["simplepbsa"], inputs=[ToolInput(tag="in_is_required", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="is required"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simplepbsa_V0_1_0().translate("wdl", allow_empty_container=True)

