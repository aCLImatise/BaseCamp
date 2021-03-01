from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Gem_Server_V0_1_0 = CommandToolBuilder(tool="gem_server", base_command=["gem", "server"], inputs=[ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="port to listen on")), ToolInput(tag="in_dir", input_type=String(optional=True), prefix="--dir", doc=InputDocumentation(doc="directories from which to serve gems\nmultiple directories may be provided\n--[no-]daemon                run as a daemon")), ToolInput(tag="in_bind", input_type=String(optional=True), prefix="--bind", doc=InputDocumentation(doc=",HOST             addresses to bind")), ToolInput(tag="in_launch", input_type=Boolean(optional=True), prefix="--launch", doc=InputDocumentation(doc="[=COMMAND]           launches a browser window\nCOMMAND defaults to 'start' on Windows\nand 'open' on all other platforms")), ToolInput(tag="in__verbose_set", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc=", --[no-]verbose               Set the verbose level of output")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Silence commands")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config-file", doc=InputDocumentation(doc="Use this config file instead of default")), ToolInput(tag="in_backtrace", input_type=Boolean(optional=True), prefix="--backtrace", doc=InputDocumentation(doc="Show stack backtrace on errors")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on Ruby debugging")), ToolInput(tag="in_machines_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The cache files for installed gems must exist to use the server as a source"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_Server_V0_1_0().translate("wdl", allow_empty_container=True)

