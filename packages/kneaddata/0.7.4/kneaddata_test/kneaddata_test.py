from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Kneaddata_Test_V0_1_0 = CommandToolBuilder(tool="kneaddata_test", base_command=["kneaddata_test"], inputs=[ToolInput(tag="in_bypass_functional_tests", input_type=Boolean(optional=True), prefix="--bypass-functional-tests", doc=InputDocumentation(doc="do not run the kneaddata end to end functional tests")), ToolInput(tag="in_bypass_unit_tests", input_type=Boolean(optional=True), prefix="--bypass-unit-tests", doc=InputDocumentation(doc="do not run the unit tests"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kneaddata_Test_V0_1_0().translate("wdl", allow_empty_container=True)

