from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Filterbam_V0_1_0 = CommandToolBuilder(tool="FilterBam", base_command=["FilterBam"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_minimummappingqualityinteger", input_type=String(), position=0, doc=InputDocumentation(doc="MINIMUM_MAPPING_QUALITY=Integer")), ToolInput(tag="in_side_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default value: null. This option may be specified 0 or more times. ")), ToolInput(tag="in_times_dot", input_type=String(), position=0, doc=InputDocumentation(doc="REF_HARD_MATCHED_RETAINED=String")), ToolInput(tag="in_striprefprefixstring_edit_names", input_type=String(), position=0, doc=InputDocumentation(doc="STRIP_REF_PREFIX=String       Edit contig names so that a contig that starts with one of these prefixes has the prefix")), ToolInput(tag="in_stripped_dot", input_type=String(), position=1, doc=InputDocumentation(doc="Default value: null. This option may be specified 0 or more times. "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterbam_V0_1_0().translate("wdl", allow_empty_container=True)

