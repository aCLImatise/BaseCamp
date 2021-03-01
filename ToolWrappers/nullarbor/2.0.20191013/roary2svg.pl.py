from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Roary2Svg_Pl_V0_1_0 = CommandToolBuilder(tool="roary2svg.pl", base_command=["roary2svg.pl"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="!      Verbose output (default '0').")), ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="Canvas width (default '1024').")), ToolInput(tag="in_height", input_type=Int(optional=True), prefix="--height", doc=InputDocumentation(doc="Row height (default '20').")), ToolInput(tag="in_tax_a_column", input_type=Int(optional=True), prefix="--taxacolumn", doc=InputDocumentation(doc="Column in gpa.csv where taxa begin (default '14').")), ToolInput(tag="in_colour", input_type=String(optional=True), prefix="--colour", doc=InputDocumentation(doc="Colour of core cells (default 'SteelBlue').")), ToolInput(tag="in_sep_colour", input_type=String(optional=True), prefix="--sepcolour", doc=InputDocumentation(doc="Colour of horizontal separators/borders (default 'LightGray').")), ToolInput(tag="in_acc_only", input_type=Boolean(optional=True), prefix="--acconly", doc=InputDocumentation(doc="!      Only draw accessory (non-core) genes (default '0').")), ToolInput(tag="in_border", input_type=Boolean(optional=True), prefix="--border", doc=InputDocumentation(doc="!       Add outline border (default '0')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Roary2Svg_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

