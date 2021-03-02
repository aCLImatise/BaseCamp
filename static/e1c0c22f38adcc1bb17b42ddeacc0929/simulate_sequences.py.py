from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Simulate_Sequences_Py_V0_1_0 = CommandToolBuilder(tool="simulate_sequences.py", base_command=["simulate_sequences.py"], inputs=[ToolInput(tag="in_number_of_sequences", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Number of sequences (1).")), ToolInput(tag="in_length_simulated_sequences", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Length of simulated sequences (3000).")), ToolInput(tag="in_relative_base_frequencies", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Relative base frequencies in A,C,G,T order (1,1,1,1).")), ToolInput(tag="in_random_seed_none", input_type=String(optional=True), prefix="-z", doc=InputDocumentation(doc="Random seed (None).")), ToolInput(tag="in_output_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="Output fasta (default: stdout)"))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simulate_Sequences_Py_V0_1_0().translate("wdl")

