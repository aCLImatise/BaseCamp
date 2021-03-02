from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Drtdump_V0_1_0 = CommandToolBuilder(tool="drtdump", base_command=["drtdump"], inputs=[ToolInput(tag="in_arguments", input_type=Boolean(optional=True), prefix="--arguments", doc=InputDocumentation(doc="print expanded command line arguments")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="quiet mode, print no warnings and errors")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode, print processing details")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode, print debug information")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level l for the logger")), ToolInput(tag="in_log_config", input_type=Boolean(optional=True), prefix="--log-config", doc=InputDocumentation(doc="[f]ilename: string\nuse config file f for the logger")), ToolInput(tag="in_read_dataset", input_type=Boolean(optional=True), prefix="--read-dataset", doc=InputDocumentation(doc="read data set without file meta information")), ToolInput(tag="in__readxferauto_use", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="=  --read-xfer-auto      use TS recognition (default)")), ToolInput(tag="in_read_xfer_detect", input_type=Boolean(optional=True), prefix="--read-xfer-detect", doc=InputDocumentation(doc="ignore TS specified in the file meta header")), ToolInput(tag="in_read_xfer_little", input_type=Boolean(optional=True), prefix="--read-xfer-little", doc=InputDocumentation(doc="read with explicit VR little endian TS")), ToolInput(tag="in_read_xfer_big", input_type=Boolean(optional=True), prefix="--read-xfer-big", doc=InputDocumentation(doc="read with explicit VR big endian TS")), ToolInput(tag="in_read_xfer_implicit", input_type=Boolean(optional=True), prefix="--read-xfer-implicit", doc=InputDocumentation(doc="read with implicit VR little endian TS")), ToolInput(tag="in_drt_file_in", input_type=String(), position=0, doc=InputDocumentation(doc="DICOM RT input filename to be dumped"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drtdump_V0_1_0().translate("wdl", allow_empty_container=True)

