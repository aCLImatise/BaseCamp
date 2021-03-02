from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gede3_V0_1_0 = CommandToolBuilder(tool="GeDe3", base_command=["GeDe3"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="force mode. Overwrites old files.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode (more information).")), ToolInput(tag="in_reference_sequence_filename", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[FILE], --reference [FILE]\nReference sequence filename ('-rm' are trainned here).\nExample: -r file1.txt."))], outputs=[], container="quay.io/biocontainers/geco3:1.0--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gede3_V0_1_0().translate("wdl")

