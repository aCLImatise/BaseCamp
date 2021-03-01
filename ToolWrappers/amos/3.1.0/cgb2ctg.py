from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cgb2Ctg_V0_1_0 = CommandToolBuilder(tool="cgb2ctg", base_command=["cgb2ctg"], inputs=[ToolInput(tag="in_extension", input_type=String(), position=0, doc=InputDocumentation(doc="otherwise -i and -o are those specified in the command line\nif -i is provided the filename must end in .cgb\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cgb2Ctg_V0_1_0().translate("wdl", allow_empty_container=True)

