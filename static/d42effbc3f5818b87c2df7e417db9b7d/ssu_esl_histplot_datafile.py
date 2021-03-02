from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ssu_Esl_Histplot_Datafile_V0_1_0 = CommandToolBuilder(tool="ssu_esl_histplot_datafile", base_command=["ssu-esl-histplot", "datafile"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Histplot_Datafile_V0_1_0().translate("wdl", allow_empty_container=True)

