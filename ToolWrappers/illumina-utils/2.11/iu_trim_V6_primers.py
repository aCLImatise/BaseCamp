from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Iu_Trim_V6_Primers_V0_1_0 = CommandToolBuilder(tool="iu_trim_V6_primers", base_command=["iu-trim-V6-primers"], inputs=[ToolInput(tag="in_archaea", input_type=Boolean(optional=True), prefix="--archaea", doc=InputDocumentation(doc="When set, primers for arhacea is used instead of bacteria.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on debug prints.")), ToolInput(tag="in_input_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="FASTA file that contain archaeal or bacterial V6 sequences with\nprimers. This file is expected to be the result of iu-merge-\npairs analysis with these flags and parameter: '--marker-gene-\nstringent --retain-only-overlap --max-num-mismatches 0'."))], outputs=[], container="quay.io/biocontainers/illumina-utils:2.11--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Trim_V6_Primers_V0_1_0().translate("wdl")

