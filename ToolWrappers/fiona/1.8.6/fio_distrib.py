from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fio_Distrib_V0_1_0 = CommandToolBuilder(tool="fio_distrib", base_command=["fio", "distrib"], inputs=[ToolInput(tag="in_no_rs", input_type=Boolean(optional=True), prefix="--no-rs", doc=InputDocumentation(doc="Use RS (0x1E) as a prefix for individual texts in a sequence\nas per http://tools.ietf.org/html/draft-ietf-json-text-\nsequence-13 (default is False)."))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Distrib_V0_1_0().translate("wdl")

