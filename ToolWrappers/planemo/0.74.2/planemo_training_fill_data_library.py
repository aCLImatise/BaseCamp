from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File

Planemo_Training_Fill_Data_Library_V0_1_0 = CommandToolBuilder(tool="planemo_training_fill_data_library", base_command=["planemo", "training_fill_data_library"], inputs=[ToolInput(tag="in_topic_name", input_type=Directory(optional=True), prefix="--topic_name", doc=InputDocumentation(doc="Name (directory name) of the topic to create or in\nwhich a tutorial should be created or updates\n[required]")), ToolInput(tag="in_tutorial_name", input_type=Directory(optional=True), prefix="--tutorial_name", doc=InputDocumentation(doc="Name (directory name) of the tutorial to modify\n[required]")), ToolInput(tag="in_zeno_do_link", input_type=String(optional=True), prefix="--zenodo_link", doc=InputDocumentation(doc="Zenodo URL with the input data")), ToolInput(tag="in_data_types", input_type=File(optional=True), prefix="--datatypes", doc=InputDocumentation(doc="YAML file with the correspondance between Zenodo\nextension and Galaxy datatypes")), ToolInput(tag="in_tool_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Training_Fill_Data_Library_V0_1_0().translate("wdl")

