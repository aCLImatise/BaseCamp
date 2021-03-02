from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dcmpsrcv_V0_1_0 = CommandToolBuilder(tool="dcmpsrcv", base_command=["dcmpsrcv"], inputs=[ToolInput(tag="in_arguments", input_type=Boolean(optional=True), prefix="--arguments", doc=InputDocumentation(doc="print expanded command line arguments")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="quiet mode, print no warnings and errors")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode, print processing details")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode, print debug information")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level l for the logger")), ToolInput(tag="in_log_config", input_type=Boolean(optional=True), prefix="--log-config", doc=InputDocumentation(doc="[f]ilename: string\nuse config file f for the logger")), ToolInput(tag="in_terminate", input_type=Boolean(optional=True), prefix="--terminate", doc=InputDocumentation(doc="terminate all running receivers")), ToolInput(tag="in_config_file", input_type=File(), position=0, doc=InputDocumentation(doc="configuration file to be read")), ToolInput(tag="in_receiver_id", input_type=String(), position=1, doc=InputDocumentation(doc="identifier of receiver in config file"))], outputs=[], container="quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dcmpsrcv_V0_1_0().translate("wdl")

