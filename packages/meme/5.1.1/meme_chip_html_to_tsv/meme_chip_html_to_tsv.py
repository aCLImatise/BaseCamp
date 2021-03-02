from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Meme_Chip_Html_To_Tsv_V0_1_0 = CommandToolBuilder(tool="meme_chip_html_to_tsv", base_command=["meme-chip_html_to_tsv"], inputs=[ToolInput(tag="in_meme_chip_html_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meme_Chip_Html_To_Tsv_V0_1_0().translate("wdl", allow_empty_container=True)

