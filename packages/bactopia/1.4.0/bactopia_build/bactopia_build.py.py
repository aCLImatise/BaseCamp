from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bactopia_Build_Py_V0_1_0 = CommandToolBuilder(tool="bactopia_build.py", base_command=["bactopia-build.py"], inputs=[ToolInput(tag="in_ext", input_type=String(optional=True), prefix="--ext", doc=InputDocumentation(doc="Extension of the Conda environment files. Default: .yml")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite of existing Conda environments.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print debug related text.")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Only critical errors will be printed.")), ToolInput(tag="in_bac_topia", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_build", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bactopia_Build_Py_V0_1_0().translate("wdl", allow_empty_container=True)

