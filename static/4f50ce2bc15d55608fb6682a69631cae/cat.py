from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cat_V0_1_0 = CommandToolBuilder(tool="cat", base_command=["cat"], inputs=[ToolInput(tag="in_show_all", input_type=Boolean(optional=True), prefix="--show-all", doc=InputDocumentation(doc="equivalent to -vET")), ToolInput(tag="in_number_non_blank", input_type=Boolean(optional=True), prefix="--number-nonblank", doc=InputDocumentation(doc="number nonempty output lines, overrides -n")), ToolInput(tag="in_equivalent_to_ve", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="equivalent to -vE")), ToolInput(tag="in_show_ends", input_type=Boolean(optional=True), prefix="--show-ends", doc=InputDocumentation(doc="display $ at end of each line")), ToolInput(tag="in_number", input_type=Boolean(optional=True), prefix="--number", doc=InputDocumentation(doc="number all output lines")), ToolInput(tag="in_squeeze_blank", input_type=Boolean(optional=True), prefix="--squeeze-blank", doc=InputDocumentation(doc="suppress repeated empty output lines")), ToolInput(tag="in_equivalent_to_vt", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="equivalent to -vT")), ToolInput(tag="in_show_tabs", input_type=Boolean(optional=True), prefix="--show-tabs", doc=InputDocumentation(doc="display TAB characters as ^I")), ToolInput(tag="in_ignored", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="(ignored)")), ToolInput(tag="in_show_non_printing", input_type=Boolean(optional=True), prefix="--show-nonprinting", doc=InputDocumentation(doc="use ^ and M- notation, except for LFD and TAB")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="Copy standard input to standard output."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cat_V0_1_0().translate("wdl", allow_empty_container=True)

