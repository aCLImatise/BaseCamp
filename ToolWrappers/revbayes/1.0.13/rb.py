from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Rb_V0_1_0 = CommandToolBuilder(tool="rb", base_command=["rb"], inputs=[ToolInput(tag="in_show_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --version ]      Show version and exit.")), ToolInput(tag="in_run_batch_mode", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --batch ]        Run in batch mode.")), ToolInput(tag="in_args", input_type=String(optional=True), prefix="--args", doc=InputDocumentation(doc="Command line arguments to initialize RevBayes")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="File(s) to source.")), ToolInput(tag="in_setoption", input_type=String(optional=True), prefix="--setOption", doc=InputDocumentation(doc="Set an option key=value.")), ToolInput(tag="in_variables_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--cmd arg             Script and command line arguments to initialize "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rb_V0_1_0().translate("wdl", allow_empty_container=True)

