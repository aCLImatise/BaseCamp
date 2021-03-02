from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Libnetcfg_V0_1_0 = CommandToolBuilder(tool="libnetcfg", base_command=["libnetcfg"], inputs=[ToolInput(tag="in_the_configuration", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="the configuration")), ToolInput(tag="in_defaults_old_config", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="defaults from the old config (implies -c, non-interactive)")), ToolInput(tag="in_specific_file_old", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="a specific file as the old config file")), ToolInput(tag="in_specific_file_new", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="a specific file as the new config file")), ToolInput(tag="in_this_help", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="this help"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Libnetcfg_V0_1_0().translate("wdl", allow_empty_container=True)

