from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Repeat_Match_V0_1_0 = CommandToolBuilder(tool="repeat_match", base_command=["repeat-match"], inputs=[ToolInput(tag="in_use_exhaustive_search", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="Use exhaustive (slow) search to find matches")), ToolInput(tag="in_forward_strand_only", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Forward strand only, don't use reverse complement")), ToolInput(tag="in_set_minimum_exact", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="#  Set minimum exact match length to #")), ToolInput(tag="in_only_output_tandem", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Only output tandem repeats")), ToolInput(tag="in_set_level_verbose", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="#  Set level of verbose (debugging) printing to #")), ToolInput(tag="in_genome_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Repeat_Match_V0_1_0().translate("wdl")

