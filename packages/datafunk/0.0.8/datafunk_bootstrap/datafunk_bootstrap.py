from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Datafunk_Bootstrap_V0_1_0 = CommandToolBuilder(tool="datafunk_bootstrap", base_command=["datafunk", "bootstrap"], inputs=[ToolInput(tag="in_input_fast_a", input_type=String(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="Alignment in fasta format to bootstrap")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="Prefix for output files (default is 'bootstrap_')")), ToolInput(tag="in_number_generate_default", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Number of bootstraps to generate (default is 1)"))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Bootstrap_V0_1_0().translate("wdl")

