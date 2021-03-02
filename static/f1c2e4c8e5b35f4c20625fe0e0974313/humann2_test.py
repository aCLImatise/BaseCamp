from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Humann2_Test_V0_1_0 = CommandToolBuilder(tool="humann2_test", base_command=["humann2_test"], inputs=[ToolInput(tag="in_run_functional_tests_tools", input_type=Boolean(optional=True), prefix="--run-functional-tests-tools", doc=InputDocumentation(doc="run the functional tests for tools")), ToolInput(tag="in_run_functional_tests_end_to_end", input_type=Boolean(optional=True), prefix="--run-functional-tests-end-to-end", doc=InputDocumentation(doc="run the humann2 end to end functional tests")), ToolInput(tag="in_bypass_unit_tests", input_type=Boolean(optional=True), prefix="--bypass-unit-tests", doc=InputDocumentation(doc="do not run the unit tests")), ToolInput(tag="in_run_all_tests", input_type=Boolean(optional=True), prefix="--run-all-tests", doc=InputDocumentation(doc="run all tests"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Test_V0_1_0().translate("wdl", allow_empty_container=True)

