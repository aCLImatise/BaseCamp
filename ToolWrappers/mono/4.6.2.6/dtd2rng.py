from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dtd2Rng_V0_1_0 = CommandToolBuilder(tool="dtd2rng", base_command=["dtd2rng"], inputs=[ToolInput(tag="in_compact", input_type=Boolean(optional=True), prefix="--compact", doc=InputDocumentation(doc=": output compact syntax."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dtd2Rng_V0_1_0().translate("wdl", allow_empty_container=True)

