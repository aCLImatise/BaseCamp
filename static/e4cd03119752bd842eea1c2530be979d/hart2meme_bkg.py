from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Hart2Meme_Bkg_V0_1_0 = CommandToolBuilder(tool="hart2meme_bkg", base_command=["hart2meme-bkg"], inputs=[ToolInput(tag="in_hart_two_meme_bkg", input_type=Int(), position=0, doc=InputDocumentation(doc="Convert a Hartemink style conditional probability file into")), ToolInput(tag="in_copyright", input_type=String(), position=0, doc=InputDocumentation(doc="(2008) The University of Queensland"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hart2Meme_Bkg_V0_1_0().translate("wdl", allow_empty_container=True)

