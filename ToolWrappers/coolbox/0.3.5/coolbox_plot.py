from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Coolbox_Plot_V0_1_0 = CommandToolBuilder(tool="coolbox_plot", base_command=["coolbox", "plot"], inputs=[ToolInput(tag="in_genome_range", input_type=Boolean(optional=True), prefix="--genome_range", doc=InputDocumentation(doc="=[4mGENOME_RANGE[0m\nType: Optional[]\nDefault: None\nGenome range string, like 'chr9:4000000-6000000'.")), ToolInput(tag="in_genome_range_two", input_type=Boolean(optional=True), prefix="--genome_range2", doc=InputDocumentation(doc="=[4mGENOME_RANGE2[0m\nType: Optional[]\nDefault: None\nGenome range string, like 'chr9:4000000-6000000'."))], outputs=[], container="quay.io/biocontainers/coolbox:0.3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coolbox_Plot_V0_1_0().translate("wdl")

