from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Fanc_V0_1_0 = CommandToolBuilder(tool="fanc", base_command=["fanc"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set verbosity level: Can be chained like '-vvv' to\nincrease verbosity. Default is to show errors,\nwarnings, and info messages (same as '-vv'). '-v'\nshows only errors and warnings, '-vvv' shows errors,\nwarnings, info, and debug messages.")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Do not print log messages to command line.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Path to file in which to save log.")), ToolInput(tag="in_email", input_type=String(optional=True), prefix="--email", doc=InputDocumentation(doc="Email address for fanc command summary.")), ToolInput(tag="in_smtp_server", input_type=String(optional=True), prefix="--smtp-server", doc=InputDocumentation(doc="SMTP server in the form smtp.server.com[:port].")), ToolInput(tag="in_smtp_username", input_type=String(optional=True), prefix="--smtp-username", doc=InputDocumentation(doc="SMTP username.")), ToolInput(tag="in_smtp_password", input_type=String(optional=True), prefix="--smtp-password", doc=InputDocumentation(doc="SMTP password.")), ToolInput(tag="in_smtp_sender_address", input_type=String(optional=True), prefix="--smtp-sender-address", doc=InputDocumentation(doc="SMTP sender email address.\n")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="Subcommand to run"))], outputs=[], container="quay.io/biocontainers/fanc:0.9.0--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fanc_V0_1_0().translate("wdl")

