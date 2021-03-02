from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Pyrosim_V0_1_0 = CommandToolBuilder(tool="pyrosim", base_command=["pyrosim"], inputs=[ToolInput(tag="in_nucleotide_flow_order", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Nucleotide flow order for one round, default acgt")), ToolInput(tag="in_calculate_use_permutation", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="Calculate and use the optimal flow permutation for -f")), ToolInput(tag="in_number_round_iterations", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="Number round iterations to simulate, default 40")), ToolInput(tag="in_number_sequenceable_homopolymer", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Number of sequence-able homopolymer bases per flow,\ndefault 15")), ToolInput(tag="in_number_reads_sequence", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Number of reads to sequence, default 1000")), ToolInput(tag="in_set_random_generator", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Set random generator seed, default seed is generated\nby the system clock")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyrosim_V0_1_0().translate("wdl", allow_empty_container=True)

