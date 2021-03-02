from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Seq2Science_Explain_V0_1_0 = CommandToolBuilder(tool="seq2science_explain", base_command=["seq2science", "explain"], inputs=[ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--configfile", doc=InputDocumentation(doc="The path to the config file.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq2Science_Explain_V0_1_0().translate("wdl", allow_empty_container=True)

