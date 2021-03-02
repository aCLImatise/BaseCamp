from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Sequence_Simulate_V0_1_0 = CommandToolBuilder(tool="sequence_simulate", base_command=["sequence", "simulate"], inputs=[ToolInput(tag="in_genome", input_type=String(optional=True), prefix="-genome", doc=InputDocumentation(doc="sample reads from these sequences")), ToolInput(tag="in_circular", input_type=Boolean(optional=True), prefix="-circular", doc=InputDocumentation(doc="treat the sequences in G as circular")), ToolInput(tag="in_genome_size", input_type=Int(optional=True), prefix="-genomesize", doc=InputDocumentation(doc="genome size to use for deciding coverage below")), ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="-coverage", doc=InputDocumentation(doc="generate approximately c coverage of output")), ToolInput(tag="in_n_reads", input_type=String(optional=True), prefix="-nreads", doc=InputDocumentation(doc="generate exactly n reads of output")), ToolInput(tag="in_n_bases", input_type=String(optional=True), prefix="-nbases", doc=InputDocumentation(doc="generate approximately n bases of output")), ToolInput(tag="in_distribution", input_type=Int(optional=True), prefix="-distribution", doc=InputDocumentation(doc="generate read length by sampling the distribution in file F\none column  - each line is the length of a sequence\ntwo columns - each line has the 'length' and 'number of sequences'\nif file F doesn't exist, use a built-in distribution\nultra-long-nanopore\npacbio\npacbio-hifi")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="-length", doc=InputDocumentation(doc="[-max]   (not implemented)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="-output", doc=InputDocumentation(doc="(not implemented)")), ToolInput(tag="in_sequence", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mode", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequence_Simulate_V0_1_0().translate("wdl", allow_empty_container=True)

