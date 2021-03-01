from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Peak_Pie_Py_V0_1_0 = CommandToolBuilder(tool="peak_pie.py", base_command=["peak_pie.py"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file of e.g. peaks")), ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="GFF file of e.g. annotations")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output PNG file")), ToolInput(tag="in_stranded", input_type=Boolean(optional=True), prefix="--stranded", doc=InputDocumentation(doc="Use strand-specific intersections")), ToolInput(tag="in_include", input_type=Boolean(optional=True), prefix="--include", doc=InputDocumentation(doc="[INCLUDE [INCLUDE ...]]\nFeaturetypes to include")), ToolInput(tag="in_exclude", input_type=Boolean(optional=True), prefix="--exclude", doc=InputDocumentation(doc="[EXCLUDE [EXCLUDE ...]]\nFeaturetypes to exclude")), ToolInput(tag="in_thresh", input_type=String(optional=True), prefix="--thresh", doc=InputDocumentation(doc="Threshold percentage below which output will be")), ToolInput(tag="in_suppressed", input_type=String(), position=0, doc=InputDocumentation(doc="--test                Run test, overwriting all other args. Result will be"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output PNG file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peak_Pie_Py_V0_1_0().translate("wdl", allow_empty_container=True)

