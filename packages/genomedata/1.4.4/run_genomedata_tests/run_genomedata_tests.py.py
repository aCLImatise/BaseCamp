from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Run_Genomedata_Tests_Py_V0_1_0 = CommandToolBuilder(tool="run_genomedata_tests.py", base_command=["run_genomedata_tests.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Minimal output")), ToolInput(tag="in_fail_fast", input_type=Boolean(optional=True), prefix="--failfast", doc=InputDocumentation(doc="Stop on first failure")), ToolInput(tag="in_catch", input_type=Boolean(optional=True), prefix="--catch", doc=InputDocumentation(doc="Catch control-C and display results")), ToolInput(tag="in_buffer", input_type=Boolean(optional=True), prefix="--buffer", doc=InputDocumentation(doc="Buffer stdout and stderr during test runs")), ToolInput(tag="in_run_genome_data_tests_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="- run default set of tests"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Genomedata_Tests_Py_V0_1_0().translate("wdl", allow_empty_container=True)

