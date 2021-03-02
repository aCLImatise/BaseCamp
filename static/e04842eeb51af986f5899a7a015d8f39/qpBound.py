from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Qpbound_V0_1_0 = CommandToolBuilder(tool="qpBound", base_command=["qpBound"], inputs=[ToolInput(tag="in_use_nam_name", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="... use <nam> as snp details name.")), ToolInput(tag="in_use_val_base", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="... use <val> as base value.")), ToolInput(tag="in_use_parameters_file", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="... use parameters from <file> .")), ToolInput(tag="in_print_message_exit", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="<>       ... Print this message and exit.")), ToolInput(tag="in_use_val_seed", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="... use <val> as seed value.")), ToolInput(tag="in_give_nam_produced", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="... give <nam> to produced out graph.")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="... print version and exit.")), ToolInput(tag="in_toggle_verbose_mode", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="... toggle verbose mode ON.")), ToolInput(tag="in_toggle_analysis_mode", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="... toggle analysis  mode ON.")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qpbound_V0_1_0().translate("wdl", allow_empty_container=True)

