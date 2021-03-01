from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dcmsr_Tests_V0_1_0 = CommandToolBuilder(tool="dcmsr_tests", base_command=["dcmsr_tests"], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="list available tests and exit")), ToolInput(tag="in_exhaustive", input_type=Boolean(optional=True), prefix="--exhaustive", doc=InputDocumentation(doc="also run extensive and slow tests")), ToolInput(tag="in_arguments", input_type=Boolean(optional=True), prefix="--arguments", doc=InputDocumentation(doc="print expanded command line arguments")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="quiet mode, print no warnings and errors")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode, print processing details")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode, print debug information")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level l for the logger")), ToolInput(tag="in_log_config", input_type=Boolean(optional=True), prefix="--log-config", doc=InputDocumentation(doc="[f]ilename: string\nuse config file f for the logger\n")), ToolInput(tag="in_tests_to_run", input_type=String(), position=0, doc=InputDocumentation(doc="names of tests to run (default: all)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dcmsr_Tests_V0_1_0().translate("wdl", allow_empty_container=True)

