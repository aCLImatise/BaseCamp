from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Boolean, Int

Draw_Basepair_Track_Pl_V0_1_0 = CommandToolBuilder(tool="draw_basepair_track.pl", base_command=["draw-basepair-track.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="\")), ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="Data directory to write to. Defaults to 'data/'.")), ToolInput(tag="in_track_label", input_type=File(optional=True), prefix="--trackLabel", doc=InputDocumentation(doc="Unique name for the track. Defaults to the wiggle filename.")), ToolInput(tag="in_key", input_type=String(optional=True), prefix="--key", doc=InputDocumentation(doc="Human-readable name for the track. Defaults to be the same as the\n'--trackLabel'.")), ToolInput(tag="in_bgcolor", input_type=Boolean(optional=True), prefix="--bgcolor", doc=InputDocumentation(doc="<R,G,B>\nBackground color for the image track. Defaults to '255,255,255',\nwhich is white.")), ToolInput(tag="in_fg_color", input_type=Boolean(optional=True), prefix="--fgcolor", doc=InputDocumentation(doc="<R,G,B>\nForeground color for the track, i.e. the color of the lines that are\ndrawn. Defaults to '0,255,0', which is bright green.")), ToolInput(tag="in_thickness", input_type=Int(optional=True), prefix="--thickness", doc=InputDocumentation(doc="Thickness in pixels of the drawn lines. Defaults to 2.")), ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="Width in pixels of each image tile. Defaults to 2000.")), ToolInput(tag="in_height", input_type=Int(optional=True), prefix="--height", doc=InputDocumentation(doc="Height in pixels of the image track. Defaults to 100.")), ToolInput(tag="in_no_links", input_type=Boolean(optional=True), prefix="--nolinks", doc=InputDocumentation(doc="If passed, do not use filesystem hardlinks to compress duplicate\ntiles.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Draw_Basepair_Track_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

