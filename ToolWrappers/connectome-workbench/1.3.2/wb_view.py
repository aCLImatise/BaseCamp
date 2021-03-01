from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Wb_View_V0_1_0 = CommandToolBuilder(tool="wb_view", base_command=["wb_view"], inputs=[ToolInput(tag="in_graphics_size", input_type=Boolean(optional=True), prefix="-graphics-size", doc=InputDocumentation(doc="<X Y>\nSet the size of the graphics region.\nIf this option is used you WILL NOT be able\nto change the size of the graphic region. It\nmay be useful when image captures of a particular\nsize are desired.")), ToolInput(tag="in_logging", input_type=String(optional=True), prefix="-logging", doc=InputDocumentation(doc="Set the logging level.\nValid Levels are:\nSEVERE\nWARNING\nINFO\nCONFIG\nFINE\nFINER\nFINEST\nALL\nOFF")), ToolInput(tag="in_no_splash", input_type=Boolean(optional=True), prefix="-no-splash", doc=InputDocumentation(doc="disable all splash screens")), ToolInput(tag="in_scene_load", input_type=File(optional=True), prefix="-scene-load", doc=InputDocumentation(doc="<scene-name-or-number>\nload the specified scene file and display the scene\nin the file that matches by name or number.  Name\ntakes precedence over number.  The scene numbers\nstart at one.")), ToolInput(tag="in_style", input_type=File(optional=True), prefix="-style", doc=InputDocumentation(doc="change the window style to the specified style\nthe following styles are valid on this system:\nWindows\nFusion\nThe selected style is listed on the About wb_view dialog\navailable from the File Menu (On Macs: wb_view Menu).\nPress the 'More' button to see the selected style.\nOther styles may be available on other systems.")), ToolInput(tag="in_spec_load_all", input_type=Boolean(optional=True), prefix="-spec-load-all", doc=InputDocumentation(doc="load all files in the given spec file, don't show spec file dialog")), ToolInput(tag="in_window_size", input_type=Boolean(optional=True), prefix="-window-size", doc=InputDocumentation(doc="<X Y>\nSet the size of the browser window")), ToolInput(tag="in_window_pos", input_type=Boolean(optional=True), prefix="-window-pos", doc=InputDocumentation(doc="<X Y>\nSet the position of the browser window\n")), ToolInput(tag="in_files", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wb_View_V0_1_0().translate("wdl", allow_empty_container=True)

