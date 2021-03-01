from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

_Gdcmpgif_V0_1_0 = CommandToolBuilder(tool="_gdcmpgif", base_command=["_gdcmpgif"], inputs=[ToolInput(tag="in_gdc_mpg_if", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_do_tgif", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Gdcmpgif_V0_1_0().translate("wdl", allow_empty_container=True)

