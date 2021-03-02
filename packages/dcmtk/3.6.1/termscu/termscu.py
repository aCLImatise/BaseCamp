from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Termscu_V0_1_0 = CommandToolBuilder(tool="termscu", base_command=["termscu"], inputs=[ToolInput(tag="in_arguments", input_type=Boolean(optional=True), prefix="--arguments", doc=InputDocumentation(doc="print expanded command line arguments")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="quiet mode, print no warnings and errors")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode, print processing details")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode, print debug information")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level l for the logger")), ToolInput(tag="in_log_config", input_type=Boolean(optional=True), prefix="--log-config", doc=InputDocumentation(doc="[f]ilename: string\nuse config file f for the logger")), ToolInput(tag="in_ae_title", input_type=Boolean(optional=True), prefix="--aetitle", doc=InputDocumentation(doc="[a]etitle: string\nset my calling AE title (default: TERMSCU)")), ToolInput(tag="in_call", input_type=Boolean(optional=True), prefix="--call", doc=InputDocumentation(doc="[a]etitle: string\nset called AE title of peer (default: ANY-SCP)")), ToolInput(tag="in_max_pdu", input_type=Boolean(optional=True), prefix="--max-pdu", doc=InputDocumentation(doc="[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes (default: 16384)\n")), ToolInput(tag="in_peer", input_type=String(), position=0, doc=InputDocumentation(doc="hostname of DICOM peer")), ToolInput(tag="in_port", input_type=String(), position=1, doc=InputDocumentation(doc="tcp/ip port number of peer"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Termscu_V0_1_0().translate("wdl", allow_empty_container=True)

