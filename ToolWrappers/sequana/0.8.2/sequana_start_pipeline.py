from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Sequana_Start_Pipeline_V0_1_0 = CommandToolBuilder(tool="sequana_start_pipeline", base_command=["sequana_start_pipeline"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force the creation to overwrite existing directory and")), ToolInput(tag="in_keywords", input_type=String(optional=True), prefix="--keywords", doc=InputDocumentation(doc="Keywords (you can edit later)")), ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="description of your future pipeline (you can still\nedit later)\n")), ToolInput(tag="in_se_quan_a_start_pipeline", input_type=String(), position=0, doc=InputDocumentation(doc="and follow the instructions. Please see the README page on our")), ToolInput(tag="in_contents", input_type=String(), position=0, doc=InputDocumentation(doc="--name NAME           Name of your project. For instance for"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Start_Pipeline_V0_1_0().translate("wdl", allow_empty_container=True)

