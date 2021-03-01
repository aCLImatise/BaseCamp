from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dcmpssnd_V0_1_0 = CommandToolBuilder(tool="dcmpssnd", base_command=["dcmpssnd"], inputs=[ToolInput(tag="in_arguments", input_type=Boolean(optional=True), prefix="--arguments", doc=InputDocumentation(doc="print expanded command line arguments")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="quiet mode, print no warnings and errors")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode, print processing details")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode, print debug information")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level l for the logger")), ToolInput(tag="in_log_config", input_type=Boolean(optional=True), prefix="--log-config", doc=InputDocumentation(doc="[f]ilename: string\nuse config file f for the logger\n")), ToolInput(tag="in_config_file", input_type=File(), position=0, doc=InputDocumentation(doc="configuration file to be read")), ToolInput(tag="in_target", input_type=String(), position=1, doc=InputDocumentation(doc="symbolic identifier of send target in config file")), ToolInput(tag="in_study", input_type=String(), position=2, doc=InputDocumentation(doc="study instance UID of study in database to be sent")), ToolInput(tag="in_series", input_type=String(), position=3, doc=InputDocumentation(doc="series instance UID (default: send complete study)")), ToolInput(tag="in_instance", input_type=String(), position=4, doc=InputDocumentation(doc="SOP instance UID (default: send complete series)"))], outputs=[], container="quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dcmpssnd_V0_1_0().translate("wdl")

