from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Starfish_Util_V0_1_0 = CommandToolBuilder(tool="starfish_util", base_command=["starfish", "util"], inputs=[ToolInput(tag="in_install_strict_dependencies", input_type=String(), position=0, doc=InputDocumentation(doc="warning! updates different packages in your..."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starfish_Util_V0_1_0().translate("wdl", allow_empty_container=True)

