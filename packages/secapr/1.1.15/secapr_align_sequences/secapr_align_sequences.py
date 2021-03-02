from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Boolean, Int

Secapr_Align_Sequences_V0_1_0 = CommandToolBuilder(tool="secapr_align_sequences", base_command=["secapr", "align_sequences"], inputs=[ToolInput(tag="in_sequences", input_type=File(optional=True), prefix="--sequences", doc=InputDocumentation(doc="The fasta file containing individual sequences for\nseveral samples and loci")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the resulting")), ToolInput(tag="in_output_format", input_type=String(optional=True), prefix="--output-format", doc=InputDocumentation(doc="The output alignment format.")), ToolInput(tag="in_no_trim", input_type=Boolean(optional=True), prefix="--no-trim", doc=InputDocumentation(doc="Align, but DO NOT trim alignments.")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Sliding window size for trimming.")), ToolInput(tag="in_proportion", input_type=String(optional=True), prefix="--proportion", doc=InputDocumentation(doc="The proportion of taxa required to have sequence at\nalignment ends.")), ToolInput(tag="in_threshold", input_type=String(optional=True), prefix="--threshold", doc=InputDocumentation(doc="The proportion of residues required across the window\nin proportion of taxa.")), ToolInput(tag="in_max_divergence", input_type=Int(optional=True), prefix="--max-divergence", doc=InputDocumentation(doc="The max proportion of sequence divergence allowed\nbetween any row of the alignment and the alignment\nconsensus.")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="The minimum length of alignments to keep.")), ToolInput(tag="in_ambiguous", input_type=Boolean(optional=True), prefix="--ambiguous", doc=InputDocumentation(doc="Allow reads in alignments containing N-bases.")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Process alignments in parallel using --cores for\nalignment. This is the number of PHYSICAL CPUs.\n")), ToolInput(tag="in_alignments_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--aligner {muscle,mafft}"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Secapr_Align_Sequences_V0_1_0().translate("wdl", allow_empty_container=True)

