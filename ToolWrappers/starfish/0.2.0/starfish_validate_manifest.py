from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Starfish_Validate_Manifest_V0_1_0 = CommandToolBuilder(tool="starfish_validate_manifest", base_command=["starfish", "validate", "manifest"], inputs=[ToolInput(tag="in_json_file_or_url", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starfish_Validate_Manifest_V0_1_0().translate("wdl", allow_empty_container=True)

