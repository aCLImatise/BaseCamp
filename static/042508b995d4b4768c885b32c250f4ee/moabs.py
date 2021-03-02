from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Moabs_V0_1_0 = CommandToolBuilder(tool="moabs", base_command=["moabs"], inputs=[ToolInput(tag="in_str_input_files", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="<str>   input files.")), ToolInput(tag="in_cf", input_type=Boolean(optional=True), prefix="--cf", doc=InputDocumentation(doc="<str>   configuration file.")), ToolInput(tag="in_def", input_type=Boolean(optional=True), prefix="--def", doc=InputDocumentation(doc="<str>   overwrite definitions in configuration file. --def key=value")), ToolInput(tag="in_boleen_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="<boleen>        verbose output  [0 or 1, default 0]")), ToolInput(tag="in_d_sun_at_tamu_dot_edu", input_type=String(), position=0, doc=InputDocumentation(doc="Usage : /usr/local/bin/moabs [options]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Moabs_V0_1_0().translate("wdl", allow_empty_container=True)

