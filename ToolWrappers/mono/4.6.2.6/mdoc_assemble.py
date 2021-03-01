from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Mdoc_Assemble_V0_1_0 = CommandToolBuilder(tool="mdoc_assemble", base_command=["mdoc-assemble"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="The documentation FORMAT used in DIRECTORIES.\nValid formats include:\necma\necmaspec\nerror\nhb\nman\nsimple\nxhtml\nIf not specified, the default format is `ecma'.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Provides the output file prefix; the files PREFIX.\nzip and PREFIX.tree will be created.\nIf not specified, `tree' is the default PREFIX.")), ToolInput(tag="in_drop_ns", input_type=String(optional=True), prefix="--dropns", doc=InputDocumentation(doc="The namespace that has been dropped from this\nversion of the assembly.")), ToolInput(tag="in_n_types", input_type=Boolean(optional=True), prefix="--ntypes", doc=InputDocumentation(doc="Replace references to native types with their\noriginal types.")), ToolInput(tag="in_mdoc", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_assemble", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Provides the output file prefix; the files PREFIX.\nzip and PREFIX.tree will be created.\nIf not specified, `tree' is the default PREFIX."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdoc_Assemble_V0_1_0().translate("wdl", allow_empty_container=True)

