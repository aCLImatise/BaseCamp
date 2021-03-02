from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fio_Insp_V0_1_0 = CommandToolBuilder(tool="fio_insp", base_command=["fio", "insp"], inputs=[ToolInput(tag="in_ipython", input_type=Boolean(optional=True), prefix="--ipython", doc=InputDocumentation(doc="Use IPython as interpreter.")), ToolInput(tag="in_src_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fiona:1.8.6", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fio_Insp_V0_1_0().translate("wdl")

