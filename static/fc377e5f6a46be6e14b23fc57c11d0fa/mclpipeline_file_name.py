from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Mclpipeline_File_Name_V0_1_0 = CommandToolBuilder(tool="mclpipeline_file_name", base_command=["mclpipeline", "file-name"], inputs=[ToolInput(tag="in_parser", input_type=String(optional=True), prefix="--parser", doc=InputDocumentation(doc="option is required")), ToolInput(tag="in_succeed_error_initialization", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="did not succeed, error in initialization part"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mclpipeline_File_Name_V0_1_0().translate("wdl", allow_empty_container=True)

