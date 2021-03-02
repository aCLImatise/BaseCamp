from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Figtree_V0_1_0 = CommandToolBuilder(tool="figtree", base_command=["figtree"], inputs=[ToolInput(tag="in_graphic", input_type=String(optional=True), prefix="-graphic", doc=InputDocumentation(doc="a graphic with the given format")), ToolInput(tag="in_width", input_type=String(optional=True), prefix="-width", doc=InputDocumentation(doc="width of the graphic in pixels")), ToolInput(tag="in_height", input_type=String(optional=True), prefix="-height", doc=InputDocumentation(doc="height of the graphic in pixels")), ToolInput(tag="in_url", input_type=File(optional=True), prefix="-url", doc=InputDocumentation(doc="input file is a URL")), ToolInput(tag="in_a_dotrambautateddotacdotuk", input_type=String(), position=0, doc=InputDocumentation(doc="http://tree.bio.ed.ac.uk/"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Figtree_V0_1_0().translate("wdl", allow_empty_container=True)

