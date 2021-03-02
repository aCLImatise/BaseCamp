from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Sharedpoly_V0_1_0 = CommandToolBuilder(tool="sharedPoly", base_command=["sharedPoly"], inputs=[ToolInput(tag="in_infile_sequence_data", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="infile (for sequence data in FASTA format)")), ToolInput(tag="in_sample_size_first", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[integer] (sample size of the first partition in the data)")), ToolInput(tag="in_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="(verbose output)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sharedpoly_V0_1_0().translate("wdl", allow_empty_container=True)

