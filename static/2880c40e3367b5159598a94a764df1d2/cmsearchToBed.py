from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Cmsearchtobed_V0_1_0 = CommandToolBuilder(tool="cmsearchToBed", base_command=["cmsearchToBed"], inputs=[ToolInput(tag="in_cm_search_path", input_type=File(optional=True), prefix="--cmsearchpath", doc=InputDocumentation(doc="Path to input cmsearch file")), ToolInput(tag="in_input_browser_settings", input_type=String(optional=True), prefix="--inputbrowsersettings", doc=InputDocumentation(doc="Browser settings. Default: browser hide")), ToolInput(tag="in_input_track_name", input_type=String(optional=True), prefix="--inputtrackname", doc=InputDocumentation(doc="Name of the track Default: PredictedRNA")), ToolInput(tag="in_input_track_description", input_type=String(optional=True), prefix="--inputtrackdescription", doc=InputDocumentation(doc="Description of the track. Default: RNA\nloci predicted by cmsearch")), ToolInput(tag="in_input_item_rgb", input_type=Boolean(optional=True), prefix="--inputitemrgb", doc=InputDocumentation(doc="RGB Color of the track. Default: True")), ToolInput(tag="in_input_track_color", input_type=Int(optional=True), prefix="--inputtrackcolor", doc=InputDocumentation(doc="RGB Color of the track. Default: 255,0,0")), ToolInput(tag="in_sort_bed", input_type=Boolean(optional=True), prefix="--sortbed", doc=InputDocumentation(doc="Sort entries of Bed file by start end end\ncooridinates. Default: True")), ToolInput(tag="in_with_header", input_type=Boolean(optional=True), prefix="--withheader", doc=InputDocumentation(doc="Output contains bed header. Default: True")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Loud verbosity")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Quiet verbosity")), ToolInput(tag="in_all", input_type=String(), position=0, doc=InputDocumentation(doc="-y --inputbedvisibility=INT      Visibility setting of track. Default: 2"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmsearchtobed_V0_1_0().translate("wdl", allow_empty_container=True)

