from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Isatab_Validate_V0_1_0 = CommandToolBuilder(tool="isatab_validate", base_command=["isatab_validate"], inputs=[ToolInput(tag="in_input_investigation_file", input_type=File(optional=True), prefix="--input-investigation-file", doc=InputDocumentation(doc="Path to input investigation file")), ToolInput(tag="in_show_duplicate_warnings", input_type=Boolean(optional=True), prefix="--show-duplicate-warnings", doc=InputDocumentation(doc="Show duplicated warnings, i.e. with same message and\nsame category (False by default)\n"))], outputs=[], container="quay.io/biocontainers/altamisa:0.2.7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isatab_Validate_V0_1_0().translate("wdl")

