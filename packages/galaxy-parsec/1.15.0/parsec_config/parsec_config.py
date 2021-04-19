from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Config_V0_1_0 = CommandToolBuilder(tool="parsec_config", base_command=["parsec", "config"], inputs=[ToolInput(tag="in_get_config", input_type=String(), position=0, doc=InputDocumentation(doc="Get a list of attributes about the Galaxy instance.")), ToolInput(tag="in_get_version", input_type=String(), position=1, doc=InputDocumentation(doc="Get the current version of the Galaxy instance."))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Config_V0_1_0().translate("wdl")

