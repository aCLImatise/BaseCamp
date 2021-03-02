from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ofstd_Tests_V0_1_0 = CommandToolBuilder(tool="ofstd_tests", base_command=["ofstd_tests"], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="list available tests and exit")), ToolInput(tag="in_exhaustive", input_type=Boolean(optional=True), prefix="--exhaustive", doc=InputDocumentation(doc="also run extensive and slow tests")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode, print processing details")), ToolInput(tag="in_tests_to_run", input_type=String(), position=0, doc=InputDocumentation(doc="names of tests to run (default: all)"))], outputs=[], container="quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ofstd_Tests_V0_1_0().translate("wdl")

