from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Vision_V0_1_0 = CommandToolBuilder(tool="vision", base_command=["vision"], inputs=[ToolInput(tag="in_no_splash", input_type=String(optional=True), prefix="--noSplash", doc=InputDocumentation(doc=": doesn't show the Vision splash screen (works only if registered)")), ToolInput(tag="in_no_terminal", input_type=String(optional=True), prefix="--noTerminal", doc=InputDocumentation(doc=": vision provides its own shell (under menu 'Edit')\ninstead of the terminal")), ToolInput(tag="in_resource_folder", input_type=Directory(optional=True), prefix="--resourceFolder", doc=InputDocumentation(doc=": stores resource file under .name (defaults to .mgltools)")), ToolInput(tag="in_ipython", input_type=String(optional=True), prefix="--ipython", doc=InputDocumentation(doc=": create an ipython shell instead of a python shell")), ToolInput(tag="in_run", input_type=String(optional=True), prefix="--run", doc=InputDocumentation(doc=": run the networks on the command line")), ToolInput(tag="in_run_and_exit", input_type=String(optional=True), prefix="--runAndExit", doc=InputDocumentation(doc=": run the networks and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vision_V0_1_0().translate("wdl", allow_empty_container=True)

