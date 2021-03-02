from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Find_Spark_Sh_V0_1_0 = CommandToolBuilder(tool="find_spark.sh", base_command=["find-spark.sh"], inputs=[ToolInput(tag="in_which", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Spark_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

