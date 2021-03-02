from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fatotwobit_V0_1_0 = CommandToolBuilder(tool="faToTwoBit", base_command=["faToTwoBit"], inputs=[ToolInput(tag="in_long", input_type=Boolean(optional=True), prefix="-long", doc=InputDocumentation(doc="use 64-bit offsets for index.   Allow for twoBit to contain more than 4Gb of sequence.\nNOT COMPATIBLE WITH OLDER CODE.")), ToolInput(tag="in_no_mask", input_type=Boolean(optional=True), prefix="-noMask", doc=InputDocumentation(doc="Ignore lower-case masking in fa file.")), ToolInput(tag="in_strip_version", input_type=Boolean(optional=True), prefix="-stripVersion", doc=InputDocumentation(doc="Strip off version number after '.' for GenBank accessions.")), ToolInput(tag="in_ignored_ups", input_type=Boolean(optional=True), prefix="-ignoreDups", doc=InputDocumentation(doc="Convert first sequence only if there are duplicate sequence")), ToolInput(tag="in_names_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Use 'twoBitDup' to find duplicate sequences."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fatotwobit_V0_1_0().translate("wdl", allow_empty_container=True)

