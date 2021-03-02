from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Scrub_Sample_Gff_Junctions_Py_V0_1_0 = CommandToolBuilder(tool="scrub_sample_GFF_junctions.py", base_command=["scrub_sample_GFF_junctions.py"], inputs=[ToolInput(tag="in_min_sample", input_type=Int(optional=True), prefix="--min_sample", doc=InputDocumentation(doc="Minimum number of samples as evidence (default: 1)")), ToolInput(tag="in_min_transcript", input_type=Int(optional=True), prefix="--min_transcript", doc=InputDocumentation(doc="Minimum number of transcripts as evidence (default: 2)")), ToolInput(tag="in_scrubbed_junction_file", input_type=File(optional=True), prefix="--scrubbed_junction_file", doc=InputDocumentation(doc="Scrubbed junction bed --- if given, directly use it to\nscrub GFFs.\n")), ToolInput(tag="in_positional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_sample_config", input_type=String(), position=1, doc=InputDocumentation(doc="summary_report")), ToolInput(tag="in_optional_arguments", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scrub_Sample_Gff_Junctions_Py_V0_1_0().translate("wdl")

