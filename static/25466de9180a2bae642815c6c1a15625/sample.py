from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Sample_V0_1_0 = CommandToolBuilder(tool="sample", base_command=["sample"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="The format ('fasta' or 'fastq' or 'lines') of the\nsequences (default=fastq)")), ToolInput(tag="in_sequences", input_type=Int(optional=True), prefix="--sequences", doc=InputDocumentation(doc="The number of sequences to be sampled (default=1)")), ToolInput(tag="in_random_seed", input_type=Int(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="The seed for sequence of pseudo-random integers to\nbe used in sampling")), ToolInput(tag="in_option_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sample_V0_1_0().translate("wdl", allow_empty_container=True)

