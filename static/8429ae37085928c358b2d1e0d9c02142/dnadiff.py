from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dnadiff_V0_1_0 = CommandToolBuilder(tool="dnadiff", base_command=["dnadiff"], inputs=[ToolInput(tag="in_delta_precomputed_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="|delta        Provide precomputed delta file for analysis")), ToolInput(tag="in_prefix_set_prefix", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="|prefix       Set the prefix of the output files (default 'out')")), ToolInput(tag="in_dna_diff", input_type=String(), position=0, doc=InputDocumentation(doc="[options]  <reference>  <query>")), ToolInput(tag="in_dnadiff_d_delta", input_type=String(), position=1, doc=InputDocumentation(doc="dnadiff  [options]  -d <delta file>")), ToolInput(tag="in_reference", input_type=String(), position=0, doc=InputDocumentation(doc="Set the input reference multi-FASTA filename")), ToolInput(tag="in_query", input_type=String(), position=1, doc=InputDocumentation(doc="Set the input query multi-FASTA filename")), ToolInput(tag="in_delta_file_unfiltered", input_type=String(), position=2, doc=InputDocumentation(doc="delta file      Unfiltered .delta alignment file from nucmer"))], outputs=[], container="quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnadiff_V0_1_0().translate("wdl")

