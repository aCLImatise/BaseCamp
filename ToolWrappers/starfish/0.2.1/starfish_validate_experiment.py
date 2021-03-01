from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Starfish_Validate_Experiment_V0_1_0 = CommandToolBuilder(tool="starfish_validate_experiment", base_command=["starfish", "validate", "experiment"], inputs=[ToolInput(tag="in_json_file_or_url", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/starfish:0.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starfish_Validate_Experiment_V0_1_0().translate("wdl")

