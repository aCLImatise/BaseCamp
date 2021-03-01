from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Treebest_Export_V0_1_0 = CommandToolBuilder(tool="treebest_export", base_command=["treebest", "export"], inputs=[ToolInput(tag="in_width", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="width [640]")), ToolInput(tag="in_height", input_type=Int(optional=True), prefix="-y", doc=InputDocumentation(doc="height [480]")), ToolInput(tag="in_margin", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="margin [20]")), ToolInput(tag="in_font_size", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="font size [11]")), ToolInput(tag="in_box_size", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="box size [4.0]")), ToolInput(tag="in_font_width", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="font width [font_size/2]")), ToolInput(tag="in_species_tree", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="species tree")), ToolInput(tag="in_suppress_bootstrap_value", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="suppress bootstrap value")), ToolInput(tag="in_blackwhite_mode", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="black/white mode")), ToolInput(tag="in_show_species_name", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="show species name")), ToolInput(tag="in_speciationduplication_inference", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="speciation/duplication inference")), ToolInput(tag="in_pseudolength", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="pseudo-length")), ToolInput(tag="in_tree", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Export_V0_1_0().translate("wdl", allow_empty_container=True)

