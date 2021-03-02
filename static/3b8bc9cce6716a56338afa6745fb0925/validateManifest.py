from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Validatemanifest_V0_1_0 = CommandToolBuilder(tool="validateManifest", base_command=["validateManifest"], inputs=[ToolInput(tag="in_enc_val_data", input_type=String(optional=True), prefix="-encValData", doc=InputDocumentation(doc=", relative to workingDir, defaults to encValData.")), ToolInput(tag="in_dir", input_type=String(optional=True), prefix="-dir", doc=InputDocumentation(doc="")), ToolInput(tag="in_validate_manifest", input_type=String(), position=0, doc=InputDocumentation(doc="-dir=workingDir, defaults to the current directory."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validatemanifest_V0_1_0().translate("wdl", allow_empty_container=True)

