from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Softclipstosplitreads_V0_1_0 = CommandToolBuilder(tool="SoftClipsToSplitReads", base_command=["SoftClipsToSplitReads"], inputs=[ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_true_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default value: true. This option can be set to 'null' to clear the default value.")), ToolInput(tag="in_aligners", input_type=String(), position=0, doc=InputDocumentation(doc="Default value: EXTERNAL. This option can be set to 'null' to clear the default"))], outputs=[], container="quay.io/biocontainers/gridss:2.11.1--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Softclipstosplitreads_V0_1_0().translate("wdl")

