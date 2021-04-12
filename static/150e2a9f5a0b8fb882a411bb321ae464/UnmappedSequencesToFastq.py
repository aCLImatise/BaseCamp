from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Unmappedsequencestofastq_V0_1_0 = CommandToolBuilder(tool="UnmappedSequencesToFastq", base_command=["UnmappedSequencesToFastq"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_uninformative_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default value: 20. This option can be set to 'null' to clear the default")), ToolInput(tag="in_value_dot", input_type=String(), position=1, doc=InputDocumentation(doc="INCLUDE_SOFT_CLIPPED_BASES=Boolean"))], outputs=[], container="quay.io/biocontainers/gridss:2.11.1--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unmappedsequencestofastq_V0_1_0().translate("wdl")

