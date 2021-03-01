from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Shiftbed_V0_1_0 = CommandToolBuilder(tool="shiftBed", base_command=["shiftBed"], inputs=[ToolInput(tag="in_shift_base_pairs", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Shift the BED/GFF/VCF entry -s base pairs.\n- (Integer) or (Float, e.g. 0.1) if used with -pct.")), ToolInput(tag="in_shift_features_p", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Shift features on the + strand by -p base pairs.\n- (Integer) or (Float, e.g. 0.1) if used with -pct.")), ToolInput(tag="in_shift_features_m", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Shift features on the - strand by -m base pairs.\n- (Integer) or (Float, e.g. 0.1) if used with -pct.")), ToolInput(tag="in_pct", input_type=Boolean(optional=True), prefix="-pct", doc=InputDocumentation(doc="Define -s, -m and -p as a fraction of the feature's length.\nE.g. if used on a 1000bp feature, -s 0.50,\nwill shift the feature 500 bp 'upstream'.  Default = false.")), ToolInput(tag="in_header", input_type=File(optional=True), prefix="-header", doc=InputDocumentation(doc="the header from the input file prior to results.")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_shift", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shiftbed_V0_1_0().translate("wdl", allow_empty_container=True)

