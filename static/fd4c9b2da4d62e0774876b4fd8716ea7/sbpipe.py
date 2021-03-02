from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Sbpipe_V0_1_0 = CommandToolBuilder(tool="sbpipe", base_command=["sbpipe"], inputs=[ToolInput(tag="in_create_project", input_type=String(optional=True), prefix="--create-project", doc=InputDocumentation(doc="create a project structure")), ToolInput(tag="in_simulate", input_type=File(optional=True), prefix="--simulate", doc=InputDocumentation(doc="run time course simulations")), ToolInput(tag="in_parameter_scan_one", input_type=File(optional=True), prefix="--parameter-scan1", doc=InputDocumentation(doc="run parameter scans for 1 model variable")), ToolInput(tag="in_parameter_scan_two", input_type=File(optional=True), prefix="--parameter-scan2", doc=InputDocumentation(doc="run parameter scans for 2 model variables")), ToolInput(tag="in_parameter_estimation", input_type=File(optional=True), prefix="--parameter-estimation", doc=InputDocumentation(doc="run parameter estimations")), ToolInput(tag="in_license", input_type=Boolean(optional=True), prefix="--license", doc=InputDocumentation(doc="show the license and exit")), ToolInput(tag="in_no_color", input_type=Boolean(optional=True), prefix="--nocolor", doc=InputDocumentation(doc="print logging messages without colors")), ToolInput(tag="in_logo", input_type=Boolean(optional=True), prefix="--logo", doc=InputDocumentation(doc="show the logo and exit")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="do not print any log")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="override the log level")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print debugging output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sbpipe_V0_1_0().translate("wdl", allow_empty_container=True)

