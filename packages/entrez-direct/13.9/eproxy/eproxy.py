from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Eproxy_V0_1_0 = CommandToolBuilder(tool="eproxy", base_command=["eproxy"], inputs=[ToolInput(tag="in_alias", input_type=Boolean(optional=True), prefix="-alias", doc=InputDocumentation(doc="File of aliases")), ToolInput(tag="in_pipe", input_type=Boolean(optional=True), prefix="-pipe", doc=InputDocumentation(doc="Read aliases from stdin"))], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eproxy_V0_1_0().translate("wdl")

