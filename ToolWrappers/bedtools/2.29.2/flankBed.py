from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Flankbed_V0_1_0 = CommandToolBuilder(tool="flankBed", base_command=["flankBed"], inputs=[ToolInput(tag="in_create_flanking_intervals", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Create flanking interval(s) using -b base pairs in each direction.\n- (Integer) or (Float, e.g. 0.1) if used with -pct.")), ToolInput(tag="in_flank_start_start", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="The number of base pairs that a flank should start from\norig. start coordinate.\n- (Integer) or (Float, e.g. 0.1) if used with -pct.")), ToolInput(tag="in_flank_end_end", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="The number of base pairs that a flank should end from\norig. end coordinate.\n- (Integer) or (Float, e.g. 0.1) if used with -pct.")), ToolInput(tag="in_define_l_r_based", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Define -l and -r based on strand.\nE.g. if used, -l 500 for a negative-stranded feature,\nit will start the flank 500 bp downstream.  Default = false.")), ToolInput(tag="in_pct", input_type=Boolean(optional=True), prefix="-pct", doc=InputDocumentation(doc="Define -l and -r as a fraction of the feature's length.\nE.g. if used on a 1000bp feature, -l 0.50,\nwill add 500 bp 'upstream'.  Default = false.")), ToolInput(tag="in_header", input_type=File(optional=True), prefix="-header", doc=InputDocumentation(doc="the header from the input file prior to results.")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_flank", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flankbed_V0_1_0().translate("wdl", allow_empty_container=True)

