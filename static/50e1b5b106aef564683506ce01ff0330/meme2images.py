from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Meme2Images_V0_1_0 = CommandToolBuilder(tool="meme2images", base_command=["meme2images"], inputs=[ToolInput(tag="in_motif", input_type=String(optional=True), prefix="-motif", doc=InputDocumentation(doc="output only a selected motif; repeatable")), ToolInput(tag="in_eps", input_type=Boolean(optional=True), prefix="-eps", doc=InputDocumentation(doc="output logos in eps format")), ToolInput(tag="in_png", input_type=Boolean(optional=True), prefix="-png", doc=InputDocumentation(doc="output logos in png format")), ToolInput(tag="in_rc", input_type=Boolean(optional=True), prefix="-rc", doc=InputDocumentation(doc="output reverse complement logos")), ToolInput(tag="in_motifs_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meme2Images_V0_1_0().translate("wdl", allow_empty_container=True)

