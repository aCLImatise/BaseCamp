from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, Boolean

Runbrowser_V0_1_0 = CommandToolBuilder(tool="runBrowser", base_command=["runBrowser"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file with genomic tracks. (default:\nNone)")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="--port", doc=InputDocumentation(doc="Local browser port to use. (default: 8000)")), ToolInput(tag="in_html_folder", input_type=Directory(optional=True), prefix="--htmlFolder", doc=InputDocumentation(doc="File where the template index.html file is located.\nThe default isfine unless the contents wants to be\npersonalized. The full path has to be given. (default:\nNone)")), ToolInput(tag="in_num_processors", input_type=Int(optional=True), prefix="--numProcessors", doc=InputDocumentation(doc="Number of processors to use. (default: 1)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Set to run the server in debug mode which will print\nuseful information. (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runbrowser_V0_1_0().translate("wdl", allow_empty_container=True)

