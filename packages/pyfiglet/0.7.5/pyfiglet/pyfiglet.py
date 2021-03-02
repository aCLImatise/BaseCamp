from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Pyfiglet_V0_1_0 = CommandToolBuilder(tool="pyfiglet", base_command=["pyfiglet"], inputs=[ToolInput(tag="in_font", input_type=String(optional=True), prefix="--font", doc=InputDocumentation(doc="font to render with (default: standard)")), ToolInput(tag="in_direction", input_type=String(optional=True), prefix="--direction", doc=InputDocumentation(doc="set direction text will be formatted in (default:\nauto)")), ToolInput(tag="in_justify", input_type=String(optional=True), prefix="--justify", doc=InputDocumentation(doc="set justification, defaults to print direction")), ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="set terminal width for wrapping/justification\n(default: 80)")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="shows mirror image of output text")), ToolInput(tag="in_flip", input_type=Boolean(optional=True), prefix="--flip", doc=InputDocumentation(doc="flips rendered output text over")), ToolInput(tag="in_list_fonts", input_type=Boolean(optional=True), prefix="--list_fonts", doc=InputDocumentation(doc="show installed fonts list")), ToolInput(tag="in_info_font", input_type=Boolean(optional=True), prefix="--info_font", doc=InputDocumentation(doc="show font's information, use with -f FONT")), ToolInput(tag="in_text_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyfiglet_V0_1_0().translate("wdl", allow_empty_container=True)

