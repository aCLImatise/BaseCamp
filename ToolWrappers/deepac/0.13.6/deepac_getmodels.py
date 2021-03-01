from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Deepac_Getmodels_V0_1_0 = CommandToolBuilder(tool="deepac_getmodels", base_command=["deepac", "getmodels"], inputs=[ToolInput(tag="in_sensitive", input_type=Boolean(optional=True), prefix="--sensitive", doc=InputDocumentation(doc="Rebuild the sensitive model.")), ToolInput(tag="in_rapid", input_type=Boolean(optional=True), prefix="--rapid", doc=InputDocumentation(doc="Rebuild the rapid CNN model.")), ToolInput(tag="in_fetch", input_type=Boolean(optional=True), prefix="--fetch", doc=InputDocumentation(doc="Fetch and compile the latest models and configs from the\nonline repository.")), ToolInput(tag="in_download_only", input_type=Boolean(optional=True), prefix="--download-only", doc=InputDocumentation(doc="Fetch weights and config files but do not compile the\nmodels.\n"))], outputs=[], container="quay.io/biocontainers/deepac:0.13.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Getmodels_V0_1_0().translate("wdl")

