from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dcmp2Pgm_V0_1_0 = CommandToolBuilder(tool="dcmp2pgm", base_command=["dcmp2pgm"], inputs=[ToolInput(tag="in_arguments", input_type=Boolean(optional=True), prefix="--arguments", doc=InputDocumentation(doc="print expanded command line arguments")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="quiet mode, print no warnings and errors")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode, print processing details")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode, print debug information")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level l for the logger")), ToolInput(tag="in_log_config", input_type=Boolean(optional=True), prefix="--log-config", doc=InputDocumentation(doc="[f]ilename: string\nuse config file f for the logger")), ToolInput(tag="in_p_state", input_type=Boolean(optional=True), prefix="--pstate", doc=InputDocumentation(doc="[f]ilename: string\nprocess using presentation state file")), ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="--config", doc=InputDocumentation(doc="[f]ilename: string\nprocess using settings from configuration file")), ToolInput(tag="in_frame", input_type=Boolean(optional=True), prefix="--frame", doc=InputDocumentation(doc="[f]rame: integer\nprocess using image frame f (default: 1)")), ToolInput(tag="in_pgm", input_type=Boolean(optional=True), prefix="--pgm", doc=InputDocumentation(doc="save image as PGM (default)")), ToolInput(tag="in_dcm_file_in", input_type=String(), position=0, doc=InputDocumentation(doc="input DICOM image")), ToolInput(tag="in_bitmap_out", input_type=String(), position=1, doc=InputDocumentation(doc="output DICOM image or PGM bitmap"))], outputs=[], container="quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dcmp2Pgm_V0_1_0().translate("wdl")

