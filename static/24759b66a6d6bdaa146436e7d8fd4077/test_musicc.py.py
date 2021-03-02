from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Test_Musicc_Py_V0_1_0 = CommandToolBuilder(tool="test_musicc.py", base_command=["test_musicc.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Quiet output")), ToolInput(tag="in_locals", input_type=Boolean(optional=True), prefix="--locals", doc=InputDocumentation(doc="Show local variables in tracebacks")), ToolInput(tag="in_fail_fast", input_type=Boolean(optional=True), prefix="--failfast", doc=InputDocumentation(doc="Stop on first fail or error")), ToolInput(tag="in_catch", input_type=Boolean(optional=True), prefix="--catch", doc=InputDocumentation(doc="Catch Ctrl-C and display results so far")), ToolInput(tag="in_buffer", input_type=Boolean(optional=True), prefix="--buffer", doc=InputDocumentation(doc="Buffer stdout and stderr during tests")), ToolInput(tag="in_tests", input_type=String(), position=0, doc=InputDocumentation(doc="a list of any number of test modules, classes and test")), ToolInput(tag="in_methods_dot", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:")), ToolInput(tag="in_test_music_cdot_py", input_type=String(), position=0, doc=InputDocumentation(doc="- run default set of tests"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Musicc_Py_V0_1_0().translate("wdl", allow_empty_container=True)

