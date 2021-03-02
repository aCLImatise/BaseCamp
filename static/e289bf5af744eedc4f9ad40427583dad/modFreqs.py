from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Modfreqs_V0_1_0 = CommandToolBuilder(tool="modFreqs", base_command=["modFreqs"], inputs=[ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="modFreqs tree.mod <G+Cfreq> > new.mod"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Modfreqs_V0_1_0().translate("wdl", allow_empty_container=True)

