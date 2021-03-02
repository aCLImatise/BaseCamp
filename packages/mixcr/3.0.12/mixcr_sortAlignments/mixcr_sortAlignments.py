from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Mixcr_Sortalignments_V0_1_0 = CommandToolBuilder(tool="mixcr_sortAlignments", base_command=["mixcr", "sortAlignments"], inputs=[ToolInput(tag="in_overwrite_if_required", input_type=Boolean(optional=True), prefix="--overwrite-if-required", doc=InputDocumentation(doc="Overwrite output file if it is corrupted or if it was generated from\ndifferent input file or with different parameters. -f / --force-overwrite\noverrides this option.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose warning messages.")), ToolInput(tag="in_force_overwrite", input_type=File(optional=True), prefix="--force-overwrite", doc=InputDocumentation(doc="Force overwrite of output file(s).")), ToolInput(tag="in_no_warnings", input_type=Boolean(optional=True), prefix="--no-warnings", doc=InputDocumentation(doc="Suppress all warning messages.")), ToolInput(tag="in_scr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sort_alignments", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_force_overwrite", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite", type_hint=File()), doc=OutputDocumentation(doc="Force overwrite of output file(s)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mixcr_Sortalignments_V0_1_0().translate("wdl", allow_empty_container=True)

