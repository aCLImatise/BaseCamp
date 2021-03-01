from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Rtg_Genomesim_V0_1_0 = CommandToolBuilder(tool="rtg_genomesim", base_command=["rtg", "genomesim"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output SDF")), ToolInput(tag="in_comment", input_type=String(optional=True), prefix="--comment", doc=InputDocumentation(doc="comment to include in the generated SDF")), ToolInput(tag="in_freq", input_type=Int(optional=True), prefix="--freq", doc=InputDocumentation(doc="relative frequencies of A,C,G,T in the generated\nsequence (Default is 1,1,1,1)")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="length of generated sequence. May be specified 0 or\nmore times, or as a comma separated list")), ToolInput(tag="in_max_length", input_type=Int(optional=True), prefix="--max-length", doc=InputDocumentation(doc="maximum sequence length")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="minimum sequence length")), ToolInput(tag="in_num_contigs", input_type=Int(optional=True), prefix="--num-contigs", doc=InputDocumentation(doc="number of sequences to generate")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="sequence name prefix (Default is simulatedSequence)")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="seed for random number generator"))], outputs=[], container="quay.io/biocontainers/rtg-tools:3.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Genomesim_V0_1_0().translate("wdl")

