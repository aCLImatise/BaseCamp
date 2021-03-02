from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pyqi_Make_Release_V0_1_0 = CommandToolBuilder(tool="pyqi_make_release", base_command=["pyqi", "make-release"], inputs=[ToolInput(tag="in_real_run", input_type=Boolean(optional=True), prefix="--real-run", doc=InputDocumentation(doc="Perform a real run [default: False]")), ToolInput(tag="in_package_name", input_type=String(optional=True), prefix="--package-name", doc=InputDocumentation(doc="The name of the package to release [REQUIRED]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyqi_Make_Release_V0_1_0().translate("wdl", allow_empty_container=True)

