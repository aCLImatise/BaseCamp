from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Io_Lib_Config_V0_1_0 = CommandToolBuilder(tool="io_lib_config", base_command=["io_lib-config"], inputs=[ToolInput(tag="in_cflags", input_type=Boolean(optional=True), prefix="--cflags", doc=InputDocumentation(doc="C and preprocessor flags (eg -I/foo/include)")), ToolInput(tag="in_libs", input_type=Boolean(optional=True), prefix="--libs", doc=InputDocumentation(doc="Link-line parameters, eg -L/foo/lib -lstaden-read"))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Io_Lib_Config_V0_1_0().translate("wdl")

