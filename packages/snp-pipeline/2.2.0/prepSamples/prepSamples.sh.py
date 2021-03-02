from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Prepsamples_Sh_V0_1_0 = CommandToolBuilder(tool="prepSamples.sh", base_command=["prepSamples.sh"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force processing even when result files already exist\nand are newer than inputs (default: False)")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose message level (0=no info, 5=lots) (default: 1)")), ToolInput(tag="in_reference_file", input_type=String(), position=0, doc=InputDocumentation(doc="Relative or absolute path to the reference fasta file")), ToolInput(tag="in_sample_dir", input_type=String(), position=1, doc=InputDocumentation(doc="Relative or absolute directory of the sample"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prepsamples_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

